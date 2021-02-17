class User < ApplicationRecord

    has_many :symptoms
    has_many :illnesses, through: :symptoms 

end
