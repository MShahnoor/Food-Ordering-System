class AddonsController < ApplicationController
  def index
    @addons = current_employee.restaurant.addons
  end

  def show
    @addon = Addon.find(params[:id])
  end
end
