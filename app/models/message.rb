class Message < ActiveRecord::Base
	belongs_to :user

	def planet
		@planet ||= Planet.find(planet_id) || {}
	end

	def delivery
		
	end

end
