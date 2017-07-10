class ApplicationController < ActionController::Base
  add_flash_types :success, :warning, :danger, :info
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  
  before_action :set_locale
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied!"
    redirect_to root_url
  end
  
  private
    def set_locale
      I18n.locale = params[:locale] if params[:locale].present?
    end
    
    def default_url_options(options={})
    { :locale => I18n.locale }
    end

  def after_sign_in_path_for(resource)
    if current_user.role.name == "university_manager"
      unm_dashboard_url
    elsif
      current_user.service == "Bachelor Degree" && current_user.st_ba_file.nil?
        create_file_url
    elsif
      current_user.service == "Master" && current_user.st_ma_file.nil?
        create_file_url
    elsif
      current_user.service == "PhD" && current_user.st_phd_file.nil?
        create_file_url
    elsif
      current_user.service == "Transfer University" && current_user.st_tr_file.nil?
        create_file_url
    else
      st_dashboard_url
    end
  end

end
