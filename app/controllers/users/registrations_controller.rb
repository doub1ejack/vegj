# This class overrides devise's registration controller.  All
# other devise actions remain (I believe) handled as usual by 
# devise.  I think it is the route that does that by specifying
# this controller specifically for the purpose of registrations
#
# see also: http://stackoverflow.com/questions/3546289
class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters, if: :devise_controller?

  # SOFT DELETE /resource
  # Follows devise guide: https://github.com/plataformatec/devise/wiki/How-to:-Soft-delete-a-user-when-user-deletes-account
  def destroy
    resource.soft_delete
    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
    set_flash_message :notice, :destroyed if is_flashing_format?
    yield resource if block_given?
    respond_with_navigational(resource){ redirect_to after_sign_out_path_for(resource_name) }
  end

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
