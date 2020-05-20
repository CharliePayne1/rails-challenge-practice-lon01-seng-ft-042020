class Office < ApplicationRecord
    belongs_to :building
    belongs_to :company

    validates :floor, numericality: { only_integer: true }

    def building_name
        self.building.name 
    end
    
end
