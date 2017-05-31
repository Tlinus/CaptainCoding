class CatsController < ApplicationController

	def index

	end

	def show
		@cat = Cat.find(params[:id])
	end

	def new
		
	end

	def create
		@cat = Cat.new(cat_params)

		@cat.save

    	redirect_to @cat
	end

	private def cat_params
    	params.require(:cat).permit(:nom, :surnom)
	end
end
