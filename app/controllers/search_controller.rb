class SearchController < ApplicationController
  def search
    @macro = FoodItem.where(name: "#{params[:name]}").first
    
  end

  def create_item
  end
end
