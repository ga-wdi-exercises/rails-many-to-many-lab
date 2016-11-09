# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.destroy_all
Patient.destroy_all

nick = Doctor.create(name:"Nick", specialty:"all the things")
house = Doctor.create(name:"Gregory House", specialty:"Nephrology")
gray = Doctor.create(name:"Meredith Grey", specialty:"General Surgery")

burns = Patient.create(name: "Montgomery Burns", age: 123, gender: "male")
elephant_man = Patient.create(name: "Joseph Merrick", age: 27, gender:"male")
storm = Patient.create(name:"Storm", age: 32, gender:"female")
zoe = Patient.create(name: "Zoe Barnes", age: 27, gender:"female")
sansa = Patient.create(name: "Sansa", age: 22, gender: "female")
