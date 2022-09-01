ActiveAdmin.register Employee do
  permit_params :email, :password, :password_confirmation,:first_name,:last_name,:restaurant_id

  action_item :view_site do
    link_to "Invite Employee", new_employee_invitation_path
  end
end
