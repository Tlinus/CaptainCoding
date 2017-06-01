class Perso < ApplicationRecord
	validates :nom, presence: true,
						length: {minimum: 3}

	has_one :avatar
	accepts_nested_attributes_for :avatar
end
