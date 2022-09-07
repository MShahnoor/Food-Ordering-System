class ItemGroupsController < ApplicationController
  def index
    @item_groups = current_employee.restaurant.item_groups
  end

  def show
    @item_group = ItemGroup.find(params[:id])
  end
end
