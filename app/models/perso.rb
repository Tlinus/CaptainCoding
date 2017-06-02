class Perso < ApplicationRecord
	validates :nom, presence: true,
						length: {minimum: 3}

	has_one :avatar
	has_one :equipement

	accepts_nested_attributes_for :avatar
	accepts_nested_attributes_for :equipement
end
