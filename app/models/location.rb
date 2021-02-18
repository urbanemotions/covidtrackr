class Location < ApplicationRecord
    
    belongs_to :illness
    
    CITY = ["Seattle", 
            "San Francisco", 
            "New York", 
            "Los Angeles", 
            "Miami"]
    
    validates :name, presence: true 
    validates :city, inclusion: {in: CITY}
    
end
