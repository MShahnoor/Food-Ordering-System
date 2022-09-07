class ItemGroupsController < ApplicationController
  def index
    @item_groups = current_employee.restaurant.item_groups
  end

  def show
    @item_group = ItemGroup.find(params[:id])
  end

  def new
    @item_group = ItemGroup.new
  end

  def create
    @item_group = ItemGroup.new(item_group_params)

    if @item_group.save
      flash[:notice] = "Created Category!"
      redirect_to item_groups_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def item_group_params
    params.require(:item_group).permit(:title, :is_available, :restaurant_id)
  end
end
