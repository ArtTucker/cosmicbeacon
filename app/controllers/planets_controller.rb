class PlanetsController < ApplicationController
  def index
  	@planets = Planet.all
  	render :index
  end

  def show
  end
end
