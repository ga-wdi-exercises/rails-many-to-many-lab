# Schedoc (sk-DOC)

## Help Dr. Manny's Receptionist

Your task is to create a scheduling app for the new receptionist at Dr. Manny's practice. Another developer had started building out the interface and application, but got sucked into a code challenge black hole from which they have not emerged since...

The prior developer created CRUD functionality for doctors and patients, but there is no ActiveRecord association between them.

In fact, there is supposed to be a join model linking doctors and patients, so that the receptionist can schedule appointments. Not only should this join model associate a certain doctor with a certain patient, but it should do so at a specific time (the time at which the appointment is to be scheduled).

## Problem Domain

At Dr. Manny's practice, there is an assortment of doctors, each with their own specialty. The many patients of Dr. Manny's practice have various ailments and have to see different doctors on different occasions. Each patient potentially has multiple doctors that they will need to see.

## Specifications

Ultimately, you will have to create a join model (appointments/checkups/visits/etc) that creates many-to-many associations between doctors and patients.

You will have to write or generate migrations for this join model that references the models being joined. You will also have to include the time of the appointment/checkup/visit/whatever-you-named-it as well ([Check out the bottom of section 3.1](http://guides.rubyonrails.org/v2.3/migrations.html)).

## State of the Existing App

The models have no active record associations, nor is there a join model. Your task is to create a join model, create migrations that link the models and add the appropriate columns to the join model, set up the ActiveRecord associations in the models (`app/models/doctors.rb` & `app/models/patients.rb`), and alter seed data to create some appointments.

Then, create CRUD functionality and corresponding views for this join. 
