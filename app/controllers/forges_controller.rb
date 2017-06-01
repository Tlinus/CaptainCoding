class ForgesController < ApplicationController

	def index
		@armes = Arme.all
		@armures = Armure.all
	end
end
