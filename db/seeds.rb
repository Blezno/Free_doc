# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker' 

doctors = []
patients = []

10.times do
    doctor = Doctor.create!(
        first_name: Faker::Fantasy::Tolkien.character,
        last_name: Faker::Games::ElderScrolls.last_name,
        specialty: Faker::Fantasy::Tolkien.race,
        zip_code: Faker::Fantasy::Tolkien.location
    )
    doctors << doctor
end

20.times do
    patient = Patient.create!(
        first_name: Faker::Movies::Hobbit.character,
        last_name: Faker::Movies::Hobbit.thorins_company
    )
    patients << patient
end

30.times do
    Appointment.create!(
        date: Faker::Date.in_date_period,
        doctor_id: doctors[rand(0..9)].id,
        patient_id: patients[rand(0..19)].id
    )
end