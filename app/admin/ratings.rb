ActiveAdmin.register Rating do
  permit_params :value, :description, :order_id, :customer_id
end
