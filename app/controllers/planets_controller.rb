class PlanetsController < ApplicationController
  def index
  	# @planets = Planet.all
  	# Array to populate
  	@planets = []
  	#API Request
  	res = HTTParty.get("http://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?table=exoplanets&select=pl_name,pl_eqt,pl_masse,st_dist,pl_hostname,pl_edelink&where=st_dist<46&order=st_dist&format=xml")
  	#Data mining
  	data = res["VOTABLE"]["RESOURCE"]["TABLE"]["DATA"]["TABLEDATA"]["TR"]
  	#Data formatting
  	data.each do |item|
	  planet = {}
	  planet[:name] = item["TD"][0]
	  planet[:temp] = item["TD"][1]
	  planet[:mass] = item["TD"][2]
	  planet[:distance] = item["TD"][3]
	  planet[:star] = item["TD"][4]
	  planet[:link] = item["TD"][5]

	  @planets.push(planet)
	end
  	render :index
  end

  def show
  end


  # def query
  # 	#another api request
  # 	#render json
  # end
end
