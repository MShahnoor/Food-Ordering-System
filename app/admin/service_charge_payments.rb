ActiveAdmin.register ServiceChargePayment do
  permit_params :amount, :order_id

  form do |f|
    inputs "Details" do
      input :order_id
      input :amount
      actions
    end
  end

  filter :order_id
  filter :amount
end
