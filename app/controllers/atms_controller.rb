class AtmsController < ApplicationController
	def index

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
	end


private
	
	def atm_params
		params.require(:atm).permit(:street_address)
	end
end
