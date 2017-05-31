class Perso < ApplicationRecord
	validates :nom, presence: true,
						length: {minimum: 3}
end
