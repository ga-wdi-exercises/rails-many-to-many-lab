# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##############################################
# After creating a join model and adding in your assocations, add instances of your join model here in the seeds.rb file,then modify seed data entries for doctors and patients to be associated with instances of your join model (visits, appointments, check_ups, or whatever you've named your join model).
##############################################
Doctor.destroy_all
Patient.destroy_all



dr_manny = Doctor.create(name:"Manuel Manny", specialty:"Many, many things")
dr_nick = Doctor.create(name:"Nick", specialty:"Whatcha got?")
dr_house = Doctor.create(name:"Gregory House", specialty:"Nephrology")
dr_gray = Doctor.create(name:"Meredith Grey", specialty:"General Surgery")

m_burns = Patient.create(name: "Montgomery Burns", age: 123, gender: "male")
grace_hopper = Patient.create(name: "Grace Hopper", age: 109, gender:"female")
mr_bombastic = Patient.create(name: "M. Bombastic", age: 64, gender: "simply_fantastic")
elephant_man = Patient.create(name: "Joseph Merrick", age: 27, gender:"male")
storm = Patient.create(name:"Storm", age: 32, gender:"female")
zoe = Patient.create(name: "Zoe Barnes", age: 27, gender:"female")
sansa = Patient.create(name: "Sansa Stark", age: 22, gender: "female")
sea_biscuit = Patient.create(name: "C. Biscuit", age: 52, gender: "not_horse")
molly_millions  = Patient.create(name: "Molly 'Street Samurai' Millions", age: 27, gender:"female")
squanchy = Patient.create(name: "Squanchy", age: -12, gender:"squanchy_male")
ada_lovelace = Patient.create(name: "Ada Lovelace", age: 200, gender:"female")

# Add Appointments here
foot = Appointment.create(appt_time:"12pm", doctor: dr_manny, patient: zoe)
checkup = Appointment.create(appt_time: "1pm", doctor: dr_nick, patient: storm)
surgery = Appointment.create(appt_time: "2pm", doctor: dr_house, patient: m_burns)
