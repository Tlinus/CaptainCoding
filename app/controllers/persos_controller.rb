class PersosController < ApplicationController

	# def initialize(name)
 #        @name = name
 #        @life = 100
 #        @dmg = 5
 #        @equipement = {}
 #        @mana = 100
 #        @vel = 15
 #        @strong = 1.2

 #    end

    def index
    	@persos = Perso.all
    end

    def show
    	@perso = Perso.find(params[:id])
    	
    	
    end

    def new 
    	@perso = Perso.new
    end

    def create
    	@perso = Perso.new(perso_params)

    	if(@perso.save)
    		redirect_to @perso
    	else
			render 'new'
	 	end

    end

    def edit
    	@perso = Perso.find(params[:id])	
    end

    def update
    	@perso = Perso.find(params[:id])

    	if(@perso.update(perso_params))
    		redirect_to @perso
    	else
    		redirect_to edit_perso_path(@perso)
    	end
    end

    def destroy
    	@perso = Perso.find(params[:id])
    	@perso.destroy

    	redirect_to persos_path
    end

    private def perso_params
    	params.require(:perso).permit(:nom, :surnom, :life, :attaque, :img)
	end


end
