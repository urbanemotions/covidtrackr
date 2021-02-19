User.destroy_all
Illness.destroy_all
Symptom.destroy_all
Location.destroy_all
Treatment.destroy_all

# COVID_SYMPTOMS = ["Fever or feeling feverish (such as chills, sweating)", 
#                   "Cough", 
#                   "Mild or moderate difficulty breathing", 
#                   "Sore throat", 
#                   "Muscle aches or body aches", 
#                   "Vomiting or diarrhea", 
#                   "New loss of taste or smell", 
#                   "Congestion or runny nose"]
# COVID_TREATMENTS = ["Self care", 
#                     "Medical care"]
# MEDICAL_CARE_TREATMENTS = ["Antiviral drug (remdesivir)", 
#                            "Hospitalized", 
#                            "Oxygen therapy"]
# SELF_CARE_TREATMENTS = ["Stay home", 
#                         "Over-the-counter medicines (acetaminophen)"]
# # treatment can be self care stay home, meds, medical - antiviral drug
# # drop down to select self care or medical assistants

# CITY = ["Seattle", 
#     "San Francisco", 
#     "New York", 
#     "Los Angeles", 
#     "Miami"]    

u1 = User.create(name: "Irvin", age: 25, sex: "M")
u2 = User.create(name: "Sin", age: 20, sex: "F")
u3 = User.create(name: "Jean", age: 42, sex: "M")
u4 = User.create(name: "Deirdre", age: 35, sex: "F")
u5 = User.create(name: "Bri", age: 36, sex: "M")

i1 = Illness.create(name: "Covid Positive")
i2 = Illness.create(name: "Covid Negative")
i3 = Illness.create(name: "Covid Positive")
i4 = Illness.create(name: "Covid Positive")
i5 = Illness.create(name: "Covid Positive")

s1 = Symptom.create(name: "Cough", user_id: u1.id, illness_id: i1.id)
s2 = Symptom.create(name: "Sore throat", user_id: u2.id, illness_id: i2.id)
s3 = Symptom.create(name: "New loss of taste or smell", user_id: u3.id, illness_id: i3.id)
s4 = Symptom.create(name: "Vomiting or diarrhea", user_id: u4.id, illness_id: i4.id)
s5 = Symptom.create(name: "Fever or feeling feverish (such as chills, sweating)", user_id: u5.id, illness_id: i5.id)

l1 = Location.create(name: "New York")
l2 = Location.create(name: "San Francisco")
l3 = Location.create(name: "Seattle")
l4 = Location.create(name: "Seattle")
l5 = Location.create(name: "Miami")

# HOW TO SELECT SELF CARE, 
# WHICH THEN ALLOWS USER TO SELECT THE TYPE OF SELF CARE TREATMENT
t1 = Treatment.create(name: "Self care")
t2 = Treatment.create(name: "None") #covid negative so dont need treatment 
t3 = Treatment.create(name: "Medical care")
t4 = Treatment.create(name: "Medical care")
t5 = Treatment.create(name: "Self care")