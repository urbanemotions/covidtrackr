class Treatment < ApplicationRecord
    
    belongs_to :user
    belongs_to :illness

    COVID_TREATMENTS = ["Self care", 
                        "Medical care"]

    validates :covidtreatment, presence: true 
    validates :covid_treatment, inclusion: {in: COVID_TREATMENTS}

    validates :illness, uniqueness: {scope: :user}

end
