class ArenaController < ApplicationController

	def index
		@welcome = "Bienvenue sur Arena, Arène de combat pour tous les aventuriers!"
	end

	def Arena
		@persos = Perso.all()
		@equip = Equipement.all()
		@avatar = Avatar.all()
	end
end
