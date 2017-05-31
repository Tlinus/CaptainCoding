class CaracterisquesController

    attr_reader :vie, :attq, :armure, :stuff, :vit, :lvl, :cost
	    def initialize
	        @vie = 100
	        @attq = 10
	        @armure = 5
	        @vit = 10 

	        @stuff = {}
	    end
	    def vie=(new_vie)
	        @vie = new_vie
	    end

	    def attq=(new_attq)
	        @attq = new_attq
	    end

	    def armure=(new_armure)
	        @armure = new_armure
	    end

	    def vit=(new_vit)
	        @vit = new_vit
	    end


end