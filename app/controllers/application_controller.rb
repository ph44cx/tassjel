class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # before_action :authenticate_user!
  protect_from_forgery with: :exception
  
  before_action :set_locale
  
  rescue_from CanCan::AccessDenied do
 	  redirect_to root_path, notice: "you are not authorized to access this page"
  end
  
  private
    def set_locale
      I18n.locale = params[:locale] if params[:locale].present?
    end
    
    def default_url_options(options={})
    { :locale => I18n.locale }
    end
end
