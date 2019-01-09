class FoodItemController < ApplicationController

  def add_item
    FoodItem.add_item(params[:name], params[:protein], params[:fat], params[:carbs])
  end
end
