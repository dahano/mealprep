class SearchController < ApplicationController

  def search
    @macro = FoodItem.search_item_by_name(params[:search])
    @macro
    render 'dashboard/index'
  end

  def summon_modal
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create_item
    food_name = params["create_item"]["name"]
    protein = params["create_item"]["protein"]
    fat = params["create_item"]["fat"]
    carbs = params["create_item"]["carbs"]
    # TODO: Add validation for food name
    before_count = FoodItem.total_entries
    new_food_item = FoodItem.create_entry(food_name, protein, fat, carbs)
    after_count = FoodItem.total_entries
    if after_count > before_count
      flash[:notice] = "Food item successfully created"
    else
      flash[:error] = "Could not save food item"
    end
    redirect_to '/'
  end

end
