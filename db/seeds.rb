# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


job_one = JobListing.new(title: "Hostess wanted for corporate congress", category: "hostess", description: "hostess needed for corporate congress", start_date: "01/09/2018", end_date: "04/09/2018", salary: "200", currency: "EUR")
event_one = Event.new(title: "Fashion industry congress", description: "The most important fashion congress in Northern Italy", start_date: "01/09/2018", end_date: "04/09/2018", venue: "Hilton Hotel Milano")
employer_one = User.new(company_name: "ArbiEvents", role: "employer")
employer_one.save

candidate_one = User.new(first_name: "Regis", last_name: "Smith", role: "candidate", position: "host")
candidate_one.save

candidate_two = User.create(first_name: "Elisabetta", last_name: "Smith", role: "candidate", position: "hostess")

candidate_three = User.create(first_name: "Regis", last_name: "Smith", role: "candidate", position: "host")


event_one.user = employer_one
event_one.save
job_one.event = event_one
job_one.save



job_two = JobListing.new(title: "Hostess wanted for corporate congress", category: "hostess", description: "hostess needed for corporate congress", start_date: "01/09/2018", end_date: "04/09/2018", salary: "200", currency: "EUR")
job_two.event = event_one
job_two.save

job_three = JobListing.new(title: "Hostess wanted for corporate congress", category: "hostess", description: "hostess needed for corporate congress", start_date: "01/09/2018", end_date: "04/09/2018", salary: "200", currency: "EUR")
job_three.event = event_one
job_three.save

job_four = JobListing.new(title: "Hostess wanted for corporate congress", category: "hostess", description: "hostess needed for corporate congress", start_date: "01/09/2018", end_date: "04/09/2018", salary: "200", currency: "EUR")
job_four.event = event_one
job_four.save

job_five = JobListing.new(title: "Interpreter needed for international conference", category: "interpreter", start_date: "07/09/2018", end_date: "07/09/2018", salary: "300", currency: "EUR")
event_two = Event.new(title: "Mediators worldwide conference", start_date: "07/09/2018", end_date: "07/09/2018")
employer_two = User.new(company_name: "ArbiMediations", role: "employer")
event_two.user = employer_two
event_two.save
job_five.event = event_two
job_five.save







booking_one = Booking.new(status: "applied", start_date: "07/09/2018", end_date: "07/09/2018")
booking_one.job_listing = job_one
booking_one.user = candidate_one
booking_one.save

booking_two = Booking.new(status: "pending", start_date: "10/09/2018", end_date: "10/09/2018")
booking_two.job_listing = job_two
booking_two.user = candidate_two
booking_two.save

booking_three = Booking.new(status: "accepted", start_date: "08/08/2018", end_date: "10/08/2018")
booking_three.job_listing = job_three
booking_three.user = candidate_three
booking_three.save








