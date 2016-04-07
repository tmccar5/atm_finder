class Atm < ActiveRecord::Base
	geocoded_by :street_address
	after_validation :geocode
end
