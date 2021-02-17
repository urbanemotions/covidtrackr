# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



u1 = User.create(name: "Irvin", age: 25, sex: "M")
u2 = User.create(name: "Sin", age: 20, sex: "F")


# s1 = Symptom.create(symptom: "coughing", user_id, illness_id)
# s2 = Symptom.create(symptom: "chest pains", user_id, illness_id)
# s3 = Symptom.create(symptom: "fatigue", user_id, illness_id)

l1 = Location.create(location: "New York")

i1 = Illnesses.create(illness: )


