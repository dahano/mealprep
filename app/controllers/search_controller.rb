class SearchController < ApplicationController
  def search
    @macro = FoodItem.find_food_item_name(params[:search])
    @macro
    render 'dashboard/index'
  end

  def create_item
    respond_to do |format|
      format.html
      format.js
    end
  end

  def add_item
    food_name = params["create_food_item"]["food_name"]
    protein = params["create_food_item"]["protein"]
    fat = params["create_food_item"]["fat"]
    carbs = params["create_food_item"]["carbs"]
    # TODO: Add validation for food name
    before_count = FoodItem.total_entries
    new_food_item = FoodItem.add_item(food_name, protein, fat, carbs)
    after_count = FoodItem.total_entries
    if after_count > before_count
      flash[:notice] = "Food item successfully created"
      redirect_to '/'
    else
      puts "Sad panda, something happened...."
    end
  end

end
