# This class overrides devise's registration controller.  All
# other devise actions remain (I believe) handled as usual by 
# devise.  I think it is the route that does that by specifying
# this controller specifically for the purpose of registrations
#
# see also: http://stackoverflow.com/questions/3546289
class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  # we have to explicitly permit params in overridden controllers like this
  # see https://github.com/plataformatec/devise#strong-parameters
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:name, :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:name, :email, :password, :password_confirmation, :current_password)
    end
  end
end
