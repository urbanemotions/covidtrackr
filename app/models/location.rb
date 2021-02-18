class Location < ApplicationRecord
    belongs_to :user
    belongs_to :illness
    
    CITY = ["Seattle", 
            "San Francisco", 
            "New York", 
            "Los Angeles", 
            "Miami"]
    
    validates :citylocation, presence: true 
    validates :city, inclusion: {in: CITY}
    
end
