class Illness < ApplicationRecord

    has_many :symptoms
    has_many :users, through: :symptoms
    has_many :locations
    has_many :treatments
    
end
