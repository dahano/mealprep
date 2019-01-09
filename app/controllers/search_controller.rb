class SearchController < ApplicationController

  def search_for
    p "PARAMS FOR SEARCH ARE: #{params[:search]}"
    puts "meow"
    puts "meow"
    puts "meow"
    puts "meow"
    puts "meow"
    puts "meow"
    puts "meow"
    puts "meow"
    # @result = FoodItem.find_food_item_name(params[:search])
    # if @result.nil?
    #   flash[:error] = "Item doesnt exist yet, meow"
    # else
    # @result
    # render ('dashboard/index')
  end

end
