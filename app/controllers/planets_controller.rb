class PlanetsController < ApplicationController
  def index
  	@planets = Planet.all
  	render :index
  end

  def show
  end


  # def query
  # 	#another api request
  # 	#render json
  # end
end
