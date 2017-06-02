class Armure < ApplicationRecord

  after_initialize :default_values

  private
    def default_values
      self.is_used ||= false
    end
end
