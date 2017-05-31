class Armes
	 attr_reader  :name :attq, :vit, :lvl, :cost
	    def initialize(name, attq, vit)
	        @name = name
	        @attq = attq
	        @vit = vit 

	    end
	    def name=(new_name)
	        @name = new_name
	    end

	    def attq=(new_attq)
	        @attq = new_attq
	    end

	    def vit=(new_vit)
	        @vit = new_vit
	    end

end