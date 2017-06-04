class ArmuresController < ApplicationController

	 def show
    	@armure = Armure.find(params[:id])   
	   	@avatar = Avatar.find(@armure.avatar_id)	    
 
    end

    def new 
    	@armure = Armure.new
    end

    def create
    	@armure = Armure.new(armure_params)

        puts @armure.inspect

        @avatar = Avatar.new(avatar_params)

        puts @avatar.inspect

        @avatar.save

        @armure.avatar_id = @avatar.id

    	if(@armure.save)
    		redirect_to @armure
    	else
			render 'new'  
        end 


    end

    def edit
    	@armure = Armure.find(params[:id])	
        @avatar = Avatar.find(@armure.avatar_id)    
    end

    def update
    	@armure = Armure.find(params[:id])

        @avatar = Avatar.find(@armure.avatar_id)    

        @avatar.update(avatar_params)

    	if(@armure.update(armure_params))
    		redirect_to @armure
    	else
    		redirect_to edit_armure_path(@armure)
    	end
    end

    def destroy
    	@armure = Armure.find(params[:id])
    	@avatar = Avatar.find(@armure.avatar_id)    
    	@armure.destroy
    	@avatar.destroy

    	redirect_to forges_path
    end

    private def armure_params
    	params.require(:armure).permit(:nom, :armor, :parade, :vit, :crit, avatar: [:img_path])
	end

    private def avatar_params
        params.require(:avatar).permit(:img_path)
    end
end
