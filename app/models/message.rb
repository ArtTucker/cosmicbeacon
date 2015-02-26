class Message < ActiveRecord::Base
	belongs_to :user

	def planet
		@planet ||= Planet.find(planet_id) || {}
	end

	# def delivery
	# 	# get distance (in ly)
	# 	# convert years to hours
	# 	# light_hours = planet[:distance]*8766
	# 	# get created_at 
	# 	# message.created_at.advance(:hours => light_hours)
	# end

end
