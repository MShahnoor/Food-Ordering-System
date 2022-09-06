ActiveAdmin.register Addon do
  permit_params :title, :price, :is_available, :restaurant_id

  index do
    selectable_column
    column :id
    column :title
    column :price
    column :is_available
    actions
  end
end
