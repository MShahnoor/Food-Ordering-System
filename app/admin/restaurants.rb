ActiveAdmin.register Restaurant do
  permit_params :name, :is_available

  index do
    selectable_column
    column :id
    column :name
    column :is_available
    actions
  end
end
