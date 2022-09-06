class Employees::InvitationsController < Devise::InvitationsController
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:first_name, :last_name, :phone])
  end

  def after_invite_path_for(resource)
    admin_employees_path
  end
end
