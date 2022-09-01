class ApplicationController < ActionController::Base
  protected

  def authenticate_inviter!
    authenticate_admin_user!(force: true)
  end
end
