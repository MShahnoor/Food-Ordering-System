class ItemGroupsController < ApplicationController
  def index
    @item_groups = current_employee.restaurant.item_groups
  end
end
