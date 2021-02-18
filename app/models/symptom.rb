class Symptom < ApplicationRecord
  
  belongs_to :user
  belongs_to :illness

  COVID_SYMPTOMS = ["Fever or feeling feverish (such as chills, sweating)", 
                    "Cough", 
                    "Mild or moderate difficulty breathing", 
                    "Sore throat", 
                    "Muscle aches or body aches", 
                    "Vomiting or diarrhea", 
                    "New loss of taste or smell", 
                    "Congestion or runny nose"]
  
  validates :symptom, presence: true 
  validates :covid_symptoms, inclusion: {in: COVID_SYMPTOMS}

end
