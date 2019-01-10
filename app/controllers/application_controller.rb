class ApplicationController < ActionController::Base

  def index
    render('dashboard/index')
    puts "IM on the application controller"
  end


end
