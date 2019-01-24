class DashboardController < ApplicationController
  def index
  end

  def new_card
    @carbs = params[:carbs]
    respond_to do |format|
      format.js
    end
  end
end
