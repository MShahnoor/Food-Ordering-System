ActiveAdmin.register Rating do
  permit_params :value, :description, :order_id, :customer_id

  form do |f|
    inputs "Details" do
      input :order_id
      input :customer
      input :value
      input :description
      actions
    end
  end

  filter :order_id
  filter :customer
  filter :value
  filter :description
end
