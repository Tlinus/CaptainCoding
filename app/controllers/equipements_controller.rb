class EquipementsController < ApplicationController

	def edit
		@equipement = Equipement.find(params[:id])
		 puts @equipement.inspect
		if @equipement.arme1_id != nil
			@arme1Equiped = Arme.find_by_id(@equipement.arme1_id)
		end
		if  @equipement.arme2_id != nil
			@arme2Equiped = Arme.find_by_id(@equipement.arme2_id)
		end
		unless @equipement.armure_id.nil?
			@armureEquiped = Armure.find_by_id(@equipement.armure_id)
		end

		@armes_dispos = Arme.where("is_used = ?", false)
		@armures_dispos = Armure.where("is_used = ?", false)
		puts @armures_dispos.inspect
	end

	def update
		@equip = Equipement.find(params[:id])
		unless(@equip.arme1_id.nil?)
			@oldArme1 = Arme.find(@equip.arme1_id);
			@oldArme1.update(is_used: false)
		end
		unless(@equip.arme2_id.nil?)
			@oldArme2 = Arme.find(@equip.arme2_id);
			@oldArme2.update(is_used: false)
		end
		unless(@equip.armure_id.nil?)
			@oldArmure = Armure.find(@equip.armure_id);
			@oldArmure.update(is_used: false)
		end

		@equip.update(equipement_params)

		
		unless(@equip.arme1_id.nil?)
			@arme1 = Arme.find(@equip.arme1_id)
			puts @arme1.inspect
			@arme1.update(is_used: true)
		end
		unless(@equip.arme2_id.nil?)
			@arme2 = Arme.find(@equip.arme2_id)
			@arme2.update(is_used: true)
		end
		unless(@equip.armure_id.nil?)
			@armure = Armure.find(@equip.armure_id)
			@armure.update(is_used: true)
		end


		redirect_to persos_path
	end


	 private def equipement_params
    	params.require(:equipement).permit(:arme1_id, :arme2_id, :armure_id)
	end
end
