ActiveAdmin.register PromoAvailabilitySchedule do
  permit_params :promo_id, :start_date, :end_date
end
