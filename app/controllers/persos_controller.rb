class PersosController < ApplicationController

    def index
    	@persos = Perso.all
    end

    def show
    	@perso = Perso.find(params[:id])    
        @avatar = Avatar.find(@perso.avatar_id)	
    end

    def new 
    	@perso = Perso.new
    end

    def create
    	@perso = Perso.new(perso_params)
        
        puts @perso.inspect

        @avatar = Avatar.new(avatar_params)
        @avatar.save
        @perso.avatar_id = @avatar.id

        puts @avatar.inspect

        @equipement = Equipement.new()
        puts @equipement.inspect
        @equipement.save!
        @perso.equipement_id = @equipement.id
        puts @equipement.inspect
       

    	if(@perso.save)
    		redirect_to @perso
    	else
			render 'new'  
        end 


    end

    def edit
    	@perso = Perso.find(params[:id])	
         @avatar = Avatar.find(@perso.avatar_id)    
    end

    def update
    	@perso = Perso.find(params[:id])

        @avatar = Avatar.find(@perso.avatar_id)    

        @avatar.update(avatar_params)

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
    	params.require(:perso).permit(:nom, :surnom, :vie, :attq, :armor, :parade, :vit, :crit, avatar: [:img_path])
	end

    private def avatar_params
        params.require(:avatar).permit(:img_path)
    end
    



end
