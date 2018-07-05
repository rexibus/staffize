# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


job_one = JobListing.new(title: "ArbiEvents is seeking for hostess for corporate congress",
                        category: "hostess",
                        description: "Hostess will need to greet guests upon arrival and give general
                        directions about the venue and surrounding areas",
                        dress_code: "Black dress, elegant shoes",
                        start_date: "01/09/2018", end_date: "04/09/2018",
                        schedule_detail: "07:00 - 19:00",
                        salary: "200,00", currency: "EUR")

event_one = Event.new(title: "Fashion industry congress",
                      description: "The most important fashion congress in Northern Italy",
                      start_date: "01/09/2018", end_date: "04/09/2018",
                      venue: "Hilton Hotel Milano", address: "Via Luigi Galvani, 12, 20124 Milano")

employer_one = User.new(company_name: "ArbiEvents", role: "employer", email: "arbi@events.com", password: "arbi@events.com" )
employer_one.save


event_one.user = employer_one
event_one.save
job_one.event = event_one
job_one.save



job_two = JobListing.new(title: "Trade show model for RedBull Racing Night event",
                        category: "hostess",
                        description: "The girl will entertain guests during the event ",
                        dress_code: "Denim shorts, RedBull top tank will be provided",
                        start_date: "20/07/2018", end_date: "20/07/2018",
                        schedule_detail: "19:00 - 02:00",
                        salary: "200,00", currency: "EUR")

event_two = Event.new(title: "RedBull Racing Night",
                      description: "RedBull promotional night in famous nightclub",
                      start_date: "09/07/2018", end_date: "09/07/2018",
                      venue: "Discoteca Hotel Capo dei Greci", address: "Via Nazionale, 421, Sant'Alessio Siculo, ME")

job_two.event = event_two
event_two.user = employer_one
event_two.save
job_two.save

job_three = JobListing.new(title: "ArbiEvents is seeking for hostess for corporate congress",
                        category: "hostess",
                        description: "Hostess will need to greet guests upon arrival and give general
                        directions about the venue and surrounding areas",
                        dress_code: "Black dress, elegant shoes",
                        start_date: "01/09/2018", end_date: "04/09/2018",
                        schedule_detail: "07:00 - 19:00",
                        salary: "200,00", currency: "EUR")
job_three.event = event_one
job_three.save


job_four = JobListing.new(title: "Polish speaker hostess to present new make-up products",
                          category: "hostess",
                          description: "Present our new make-up line to our Polish guests",
                          start_date: "01/09/2018", end_date: "01/09/2018",
                          schedule_detail: "10:00 - 18:00",
                          salary: "150,00", currency: "EUR")

event_three = Event.new(title: "Cosmetics for all by ArbiCosmetics",
                      description: "Cosmetics fair for upcoming make-up lines",
                      start_date: "11/09/2018", end_date: "14/09/2018",
                      venue: "Hotel Golden Tulip Plaza.", address: "Viale Lamberti, Caserta, CE,")

employer_three = User.new(company_name: "ArbiCosmetics", role: "employer", email: "arbi@cosmetics.com", password: "arbi@cosmetics.com" )


employer_three.save
event_three.user = employer_three
event_three.save
job_three.event = event_three
job_four.save



job_five = JobListing.new(title: "Interpreter needed for ArbiMediations international conference",
                          category: "interpreter",
                          description: "Italian to French translator",
                          dress_code: "Business smart",
                          start_date: "12/07/2018", end_date: "12/07/2018",
                          schedule_detail: "08:00 - 17:00",
                          salary: "300,00", currency: "EUR")

event_four = Event.new(title: "Mediators worldwide conference",
                      description: "Worldwide meeting for mediation professionals",
                      start_date: "07/09/2018", end_date: "07/09/2018",
                      venue: "Villa Necchi Campiglio", address: "Via Mozart,12, Milano")

employer_four = User.new(company_name: "ArbiMediations", role: "employer", email: "arbi@mediations.com", password: "arbi@mediations.com")

employer_four.save
event_four.user = employer_four
event_four.save
job_five.event = event_four
job_five.save

job_six = JobListing.new(title: "Steward for cinema exhibition",
                        category: "stweard",
                        description: "Young man with short hair",
                        dress_code: "Tie black",
                        start_date: "22/07/2018", end_date: "26/07/2018",
                        schedule_detail: "17:00 - 23:00",
                        salary: "130,00", currency: "EUR")

event_five = Event.new(title: "Venice cinema exhibition",
                      description: "Showing of new indie films",
                      start_date: "22/07/2018", end_date: "26/09/2018",
                      venue: "Different venues in Lido di Venezia", address: "Lido Di Venezia, Venezia, VE")

employer_five = User.new(company_name: "Still-Arbi", role: "employer", email: "arbi@still.com", password: "arbi@still.com")


employer_five.save
event_five.user = employer_five
event_five.save
job_six.event = event_five
job_six.save

job_seven = JobListing.new(title: "Hostess for Arbi's soccer game",
                          category: "hostess",
                          description: "Hostess will escort Arbi's mates to the pitch",
                          dress_code: "not required",
                          start_date: "10/07/2018", end_date: "10/07/2018",
                          schedule_detail: "20:00 - 23:00",
                          salary: "20,00", currency: "EUR")

event_six = Event.new(title: "Arbi's soccer game",
                      description: "Soccer game to prove who's the best player",
                      start_date: "10/07/2018", end_date: "10/09/2018",
                      venue: "Campo comunale Cologna Spiaggia",
                      address: "Via C. Romualdi, Piane Tordino, Cologna Spiaggia")

employer_six = User.new(company_name: "Arbi", role: "employer", email: "arbi@soccer.com", password: "arbi@soccer.com")

employer_six.save
event_six.user = employer_six
event_six.save
job_seven.event = event_six
job_seven.save


candidate_one = User.new(first_name: "Brigitte", last_name: "Bardot", role: "candidate", email: "brigitte@test.com", password: "brigitte@test.com")
candidate_two = User.new(first_name: "Cristiano", last_name: "Malgioglio", role: "candidate", email: "cristiano@test.com", password: "cristiano@test.com")
candidate_three = User.new(first_name: "Weird Al", last_name: "Yankovic", role: "candidate", email: "al@test.com", password: "al@test.com")



booking_one = Booking.new(start_date: "07/09/2018", end_date: "07/09/2018")
booking_one.job_listing = job_one
booking_one.user = candidate_one
booking_one.save

booking_two = Booking.new(start_date: "10/09/2018", end_date: "10/09/2018")
booking_two.job_listing = job_two
booking_two.user = candidate_two
booking_two.save

booking_three = Booking.new(start_date: "08/08/2018", end_date: "10/08/2018")
booking_three.job_listing = job_three
booking_three.user = candidate_three
booking_three.save








