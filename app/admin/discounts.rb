ActiveAdmin.register Discount do
  permit_params :title, :value, :status, :discount_type
end
