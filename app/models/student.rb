require_relative '../../db/config'

# implement your Student model here
class Student < ActiveRecord::Base

	def name
		first_name + ' ' + last_name
	end

	def age
		now = Time.now.utc.to_date
		age = now.year - birthday.year
		if birthday.yday > now.yday
			age -= 1
		end
		age
	end
end
