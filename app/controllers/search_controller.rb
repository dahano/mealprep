class SearchController < ApplicationController
  def search
    puts "SEARCH PARAMS: #{params[:search]}"
    @macro = FoodItem.find_food_item_name(params[:search])
    @macro
    render 'dashboard/index'
  end

  def create_item
  end
end
