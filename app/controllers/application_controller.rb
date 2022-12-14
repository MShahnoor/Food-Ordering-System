class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def authenticate_inviter!
    authenticate_admin_user!(force: true)
  end
end
