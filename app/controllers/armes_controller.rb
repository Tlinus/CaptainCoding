class ArmesController < ApplicationController

	 def show
    	@arme = Arme.find(params[:id])
    	@avatar = Avatar.find(@arme.avatar_id)	    
    end

    def new 
    	@arme = Arme.new
    end

    def create
    	@arme = Arme.new(arme_params)

        puts @arme.inspect

        @avatar = Avatar.new(avatar_params)

        puts @avatar.inspect

        @avatar.save

        @arme.avatar_id = @avatar.id

    	if(@arme.save)
    		redirect_to @arme
    	else
			render 'new'  
        end 


    end

    def edit
    	@arme = Arme.find(params[:id])	
        @avatar = Avatar.find(@arme.avatar_id)    
    end

    def update
    	@arme = Arme.find(params[:id])

        @avatar = Avatar.find(@arme.avatar_id)    

        @avatar.update(avatar_params)

    	if(@arme.update(arme_params))
    		redirect_to @arme
    	else
    		redirect_to edit_arme_path(@arme)
    	end
    end

    def destroy
    	@arme = Arme.find(params[:id])
    	@avatar = Avatar.find(@arme.avatar_id)    
    	@arme.destroy
    	@avatar.destroy

    	redirect_to armes_path
    end

    private def arme_params
    	params.require(:arme).permit( :nom, :attq, :parade, :vit, :crit, avatar: [:img_path])
	end

    private def avatar_params
        params.require(:avatar).permit(:img_path)
    end
end
