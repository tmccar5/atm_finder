class Atm < ActiveRecord::Base
	geocoded_by :street_address
	after_validation :geocode
	include HTTParty
	

	# response = HTTParty.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=39.18619,-76.854895&keyword=atm&types=atm&rankby=distance&key=AIzaSyAny_eoq9b1UGL7Ow20vDTet9yIBb60BwA")


	# yes = response

end
