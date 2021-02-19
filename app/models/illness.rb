class Illness < ApplicationRecord

    has_many :symptoms, dependent: :destroy
    has_many :users, through: :symptoms
    has_many :locations, dependent: :destroy
    has_many :treatments, dependent: :destroy

    # validates :name, presence: true 
    # validates :name, uniqueness: {scope: :user}
    
end
