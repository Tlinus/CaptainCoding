class StuffsController < ApplicationController

    def index
    	@stuffs = Stuff.all
    end

    def show
    	@stuff = Stuff.find(params[:id])
    	
    	
    end

    def new 
    	@stuff = Stuff.new
    end

    def create
    	@stuff = Stuff.new(stuff_params)

    	if(@stuff.save)
    		redirect_to @stuff
    	else
			render 'new'
	 	end

    end

    def edit
    	@stuff = Stuff.find(params[:id])	
    end

    def update
    	@stuff = Stuff.find(params[:id])

    	if(@stuff.update(stuff_params))
    		redirect_to @stuff
    	else
    		redirect_to edit_stuff_path(@stuff)
    	end
    end

    def destroy
    	@stuff = Stuff.find(params[:id])
    	@stuff.destroy

    	redirect_to stuffs_path
    end

    private def stuff_params
    	params.require(:stuff).permit(:nom, :armes, :armures)
	end


end
