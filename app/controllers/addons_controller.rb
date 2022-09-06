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

  def create
    @addon = Addon.new(addon_params)
    if @addon.save!
      flash[:notice] = "Created Addon!"
      redirect_to addons_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @addon = Addon.find(params[:id])
    @addon.destroy

    redirect_to addons_path
  end

  private

  def addon_params
    params.require(:addon).permit(:title, :price, :is_available,:restaurant_id)
  end
end
