class AtmsController < ApplicationController
	def index
		# response = Atm.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=39.18619,-76.854895&keyword=atm&types=atm&rankby=distance&key=AIzaSyAny_eoq9b1UGL7Ow20vDTet9yIBb60BwA")
		# @test = response.parsed_response
		# @name = test["results"][0]["name"]
		# render json: @test
	end

	def new
		@atm = Atm.new
	end

	def create
		@atm = Atm.new(atm_params)
		if @atm.save
			redirect_to @atm
		else
			render 'new'
		end
	end

	def show
		@atm = Atm.find(params[:id])
		response = Atm.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{@atm.latitude},#{@atm.longitude}&keyword=atm&types=atm&rankby=distance&key=AIzaSyAny_eoq9b1UGL7Ow20vDTet9yIBb60BwA")
		@test = response.parsed_response
		@place_id = @test['results'][0]['place_id']
	end


private
	
	def atm_params
		params.require(:atm).permit(:street_address)
	end
end
