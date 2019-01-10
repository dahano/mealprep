class SearchController < ApplicationController
  def search_fn
    render json: "SEARCHY TIME"
  end

  def create_item
    puts "MEOW MEOW"
    render('dashboard/meow')
  end
end
