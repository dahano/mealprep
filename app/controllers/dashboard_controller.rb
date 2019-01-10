class DashboardController < ApplicationController
  def index
    puts 'meow im on index/DashboardController'
  end

  def retval
    render json: "MEOW"
  end
end
