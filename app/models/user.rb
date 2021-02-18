class User < ApplicationRecord

    has_many :symptoms, dependent: :destroy
    has_many :illnesses, through: :symptoms 
    has_many :locations, through: :illnesses
    has_many :treatments, through: :illnesses

    validates :name, length: {minimum: 2}
    validates :age, length: {maximum: 3}
    validates :sex, length: {maximum: 1}

end