class Arme < ApplicationRecord

  after_initialize :default_values

  private
    def default_values
      self.is_used ||= 0
    end
    
end
