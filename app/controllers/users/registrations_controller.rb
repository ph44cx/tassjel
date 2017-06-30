class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters
  
  def create
    super
    if resource.save
      @profile = Profile.new
      @profile.user_id = resource.id
      @profile.save
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :first_name, :surname, :service, :unique_id])
  end
end