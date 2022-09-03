class AddonsController < ApplicationController
  def index
    @addons = current_employee.restaurant.addons
  end
end
