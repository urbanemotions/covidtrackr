class Illness < ApplicationRecord

    has_many :symptoms
    has_many :users, through: :symptoms
    
end
