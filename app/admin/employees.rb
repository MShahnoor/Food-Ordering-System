ActiveAdmin.register Employee do
  permit_params :email, :password, :password_confirmation,:first_name,:last_name,:restaurant_id

  action_item :view_site do
    link_to "Invite Employee", new_employee_invitation_path
  end

  index do
    selectable_column
    column :id
    column :full_name
    column :email
    column :restaurant
    column :manager
    actions
  end

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :restaurant
      row :manager
      row :joining_date
      row :created_at
      row :updated_at
      row :invitation_token
      row :invitation_created_at
      row :invitation_sent_at
      row :invitation_accepted_at
      row :invited_by
    end
    active_admin_comments
  end
end
