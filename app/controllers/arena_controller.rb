class ArenaController < ApplicationController

	def index
		@welcome = "Bienvenue sur Arena, Arène de combat pour tous les aventuriers!"
	end

	def new
		@persos = Perso.all()
		@equip = Equipement.all()
		@avatar = Avatar.all()
	end

	def fight
		@perso1 = Perso.find(params[:arena][:perso1_id])
		@perso2 = Perso.find(params[:arena][:perso2_id])

		@avatarPerso1 = Avatar.find(@perso1.avatar_id)
		@avatarPerso2 = Avatar.find(@perso2.avatar_id)
	end
end
