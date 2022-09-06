class AddonsController < ApplicationController
  def index
    @addons = current_employee.restaurant.addons
  end

  def show
    @addon = Addon.find(params[:id])
  end

  def new
    @addon = Addon.new
  end

  private

  def addon_params
    params.require(:addon).permit(:title, :price, :is_available,:restaurant_id)
  end
end
