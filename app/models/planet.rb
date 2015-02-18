class Planet

def self.all
  	# @planets = Planet.all
  	# Array to populate
  	@planets ||= begin 
  		temp = []
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
		  planet[:distance] = ((item["TD"][3]).to_f*3.2616).round(3)
		  planet[:star] = item["TD"][4]
		  planet[:link] = item["TD"][5]
		  planet[:planet_id] = item["TD"][6]

		  temp.push(planet)
		end
  		temp
  	end
  	@planets
  end

  def self.find(id)
  	matches = all.select{
  		|planet| planet[:planet_id]==id
  	}
  	matches.first
  end

end
