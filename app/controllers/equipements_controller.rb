class EquipementsController < ApplicationController

	def edit
		@equipement = Equipement.find(params[:id])
		@armes_dispos = Arme.where("is_used = ?", false)
		@armures_dispos = Armure.where("is_used = ?", false)
	end
end
