ActiveAdmin.register Promo do
  permit_params :title, :value, :status, :promo_type

  filter :title
  filter :status
  filter :promo_type
  filter :customers
  filter :value
end
