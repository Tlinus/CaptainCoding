class ArenaController < ApplicationController

	def index
		@welcome = "Bienvenue sur Arena, Arène de combat pour tous les aventuriers!"
	end

	def new
		@persos = Perso.all()
		@equips = Equipement.all()
		@armes = Arme.all()
		@armures = Armure.all()
		@avatars = Avatar.all()
	end

	def fight
		@perso1 = Perso.find(params[:arena][:perso1_id])
		@perso2 = Perso.find(params[:arena][:perso2_id])

		@avatarPerso1 = Avatar.find(@perso1.avatar_id)
		@avatarPerso2 = Avatar.find(@perso2.avatar_id)

		@equip1 = Equipement.find(@perso1.equipement_id)
		@equip2 = Equipement.find(@perso2.equipement_id)
      
		@viePerso1		= @perso1.vie
		@attqPerso1		= @perso1.attq
		@armorPerso1	= @perso1.armor
		@paradePerso1	= @perso1.parade
		@vitPerso1		= @perso1.vit
		@critPerso1		= @perso1.crit

		@viePerso2		= @perso2.vie
		@attqPerso2		= @perso2.attq
		@armorPerso2	= @perso2.armor
		@paradePerso2	= @perso2.parade
		@vitPerso2		= @perso2.vit
		@critPerso2		= @perso2.crit
		# -- Chargement des armes et armures et de leurs avatars --

		#Perso1 #Equipement1
		unless @equip1.arme1_id.nil?
			@arme1Perso1 = Arme.find(@equip1.arme1_id)
			@avatarArme1Perso1 = Avatar.find_by_id(@arme1Perso1.avatar_id)

			@attqPerso1 	+= @arme1Perso1.attq    	
			@paradePerso1	+= @arme1Perso1.parade
			@vitPerso1		+= @arme1Perso1.vit
			@critPerso1		+= @arme1Perso1.crit
		end

		unless @equip1.arme2_id.nil?
			@arme2Perso1 = Arme.find(@equip1.arme2_id)
			@avatarArme2Perso1 = Avatar.find_by_id(@arme2Perso1.avatar_id)

			@attqPerso1 	+= @arme2Perso1.attq    	
			@paradePerso1	+= @arme2Perso1.parade
			@vitPerso1		+= @arme2Perso1.vit
			@critPerso1		+= @arme2Perso1.crit
		end

		unless @equip1.armure_id.nil?
			@armurePerso1 = Armure.find(@equip1.armure_id)
			@avatarArmurePerso1 = Avatar.find(@armurePerso1.avatar_id)

			@armorPerso1 	+= @armurePerso1.armor    	
			@paradePerso1	+= @armurePerso1.parade
			@vitPerso1		+= @armurePerso1.vit
		end
		
		#Perso2 #Equipement2
		unless @equip2.arme1_id.nil?
			@arme1Perso2 = Arme.find(@equip2.arme1_id)
			@avatarArme1Perso2 = Avatar.find(@arme1Perso2.avatar_id)

			@attqPerso2 	+= @arme1Perso2.attq    	
			@paradePerso2	+= @arme1Perso2.parade
			@vitPerso2		+= @arme1Perso2.vit
			@critPerso2		+= @arme1Perso2.crit
		end

		unless @equip2.arme2_id.nil?
			@arme2Perso2 = Arme.find(@equip2.arme2_id)
			@avatarArme2Perso2 = Avatar.find_by_id(@arme2Perso2.avatar_id)

			@attqPerso2 	+= @arme2Perso2.attq    	
			@paradePerso2	+= @arme2Perso2.parade
			@vitPerso2		+= @arme2Perso2.vit
			@critPerso2		+= @arme2Perso2.crit
		end

		unless @equip2.armure_id.nil?
			@armurePerso2 = Armure.find(@equip2.armure_id)
			@avatarArmurePerso2 = Avatar.find(@armurePerso2.avatar_id)

			@armorPerso2 	+= @armurePerso2.armor    	
			@paradePerso2	+= @armurePerso2.parade
			@vitPerso2		+= @armurePerso2.vit
		end
		
		
	end
end
