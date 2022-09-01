ActiveAdmin.register Addon do
  permit_params :title, :price, :is_available, :restaurant_id
end
