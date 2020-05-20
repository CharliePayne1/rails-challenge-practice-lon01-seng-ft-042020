class Company < ApplicationRecord
    has_many :offices
    has_many :buildings, through: :offices
    has_many :employees

    validates :name, presence: true

    def total_rent 
        self.buildings.sum {|building| building.rent_per_floor}
    end
end
