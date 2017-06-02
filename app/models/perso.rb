class Perso < ApplicationRecord
	validates :nom, presence: true,
						length: {minimum: 3}

	has_one :avatar
	has_one :equipement

	accepts_nested_attributes_for :avatar
	accepts_nested_attributes_for :equipement

	after_initialize :default_values

  	private
    def default_values
    	self.vie 	||= 1000
      	self.attq	||= 100
		self.armor	||= 100
		self.parade	||= 0
		self.vit	||= 100
		self.crit	||= 0
    end
end
