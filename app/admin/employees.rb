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

  form do |f|
    inputs "Details" do
      input :first_name
      input :last_name
      input :email
      input :restaurant
      input :manager
      input :joining_date
      input :password
      actions
    end
  end

  filter :restaurant
  filter :subordinates
  filter :manager
  filter :orders
  filter :first_name
  filter :last_name
  filter :email
  filter :joining_date
  filter :invitation_created_at
  filter :invitation_created_at
  filter :invitation_sent_at
  filter :invitation_accepted_at
end
