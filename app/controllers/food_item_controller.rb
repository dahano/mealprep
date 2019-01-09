class FoodItemController < ApplicationController

  def search
    @result = FoodItem.find_food_item_name(params[:search])
    if @result.nil?
      puts "Meow: I cant find that food item"
    else
      puts "Name: #{@result.name}"
      puts "protein: #{@result.protein}"
      puts "Fat: #{@result.fat}"
    end
    render ('dashboard/index')
  end

  def add_item
    FoodItem.add_item(params[:name], params[:protein], params[:fat], params[:carbs])
  end
end
