User.destroy_all

COVID_SYMPTOMS = ["Fever or feeling feverish (such as chills, sweating)", 
                  "Cough", 
                  "Mild or moderate difficulty breathing", 
                  "Sore throat", 
                  "Muscle aches or body aches", 
                  "Vomiting or diarrhea", 
                  "New loss of taste or smell", 
                  "Congestion or runny nose"]
COVID_TREATMENTS = ["Self care", 
                    "Medical care"]
MEDICAL_CARE_TREATMENTS = ["Antiviral drug (remdesivir)", 
                           "Hospitalized", 
                           "Oxygen therapy"]
SELF_CARE_TREATMENTS = ["Stay home", 
                        "Over-the-counter medicines (acetaminophen)"]
# treatment can be self care stay home, meds, medical - antiviral drug
# drop down to select self care or medical assistants

CITY = ["Seattle", 
    "San Francisco", 
    "New York", 
    "Los Angeles", 
    "Miami"]

u1 = User.create(name: "Irvin", age: 25, sex: "M")
u2 = User.create(name: "Sin", age: 20, sex: "F")
u3 = User.create(name: "Jean", age: 42, sex: "M")
u4 = User.create(name: "Deirdre", age: 35, sex: "F")
u5 = User.create(name: "Bri", age: 36, sex: "M")

s1 = Symptom.create(symptom: "Cough")
s2 = Symptom.create(symptom: "Sore throat")
s3 = Symptom.create(symptom: "New loss of taste or smell")
s4 = Symptom.create(symptom: "Vomiting or diarrhea")
s5 = Symptom.create(symptom: "Fever or feeling feverish (such as chills, sweating)")

l1 = Location.create(location: "New York")
l2 = Location.create(location: "San Francisco")
l3 = Location.create(location: "Seattle")
l4 = Location.create(location: "Seattle")
l5 = Location.create(location: "Los Angeles")

# find out how to seed this yes/no, checkbox
i1 = Illness.create(covid: "covid")

# HOW TO SELECT SELF CARE, 
# WHICH THEN ALLOWS USER TO SELECT THE TYPE OF SELF CARE TREATMENT
t1 = Treatment.create(treatment: "Self care")
