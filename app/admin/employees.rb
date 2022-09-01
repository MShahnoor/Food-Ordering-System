ActiveAdmin.register Employee do
  action_item :view_site do
    link_to "Invite Employee", new_employee_invitation_path
  end
end
