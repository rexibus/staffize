# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.delete_all
JobListing.delete_all
Event.delete_all
User.delete_all

# "Assembly/Dismantling Assistant", "Event assistant", "Host/Hostess", "Promoter"

job_listing1 = JobListing.new(title: "Beverage Assistant needed for 2018 WOMEN'S HOCKEY WORLD CUP",
    category: "Event assistant",
    description: "Handles cash transactions between customer and store. Answers routine billing questions/issues from customers.
    Receives and processes all payments according to standard procedures. Scan products, operate scanning equipment and fix scanning issues.",
    requirement: "Capable of counting money back to customer in an accurate and concise manner. Is able to do manual handling, including heavy lifting.",
    schedule_detail: "One hour break will be provided for each shift. The break not necessarily will be taken on the same time could be taken on several times (2 x 30mins) or (4 x 20mins).",
    start_date: "Tuesday, 24 July 2018",
    end_date: "Tuesday, 31 July 2018",
    start_time: "12:00",
    end_time: "22:00",
    gender: "No preference",
    dress_code: "Black Shoes (could be Black trainers without any visible logos), black socks, Black classic trousers (no jeans), Black Ironed Shirt.",
    salary: "8.78 £/h",
    currency: "£"
  )
 job_listing2 = JobListing.new(title: "FOOD RUNNER NEEDED FOR EXCITING 2018 WOMEN'S HOCKEY WORLD CUP",
    category: "Event assistant",
    description: "Delivering food orders from the kitchen to front of house counter rapidly and accurately
    Acting as the point of contact between Front of the House and Back of the House staff.",
    requirement: "Can ensure food is served in accordance with safety standards (e.g. proper temperature).",
    schedule_detail: "You will receive 4 x 15 mins breaks.",
    start_date: "Saturday, 21 July 2018",
    end_date: "Tuesday, 05 August 2018",
    start_time: "14:00",
    end_time: "23:30",
    gender: "Male",
    dress_code: "Black classic trousers (no jeans), Black Ironed Shirt, Red hat",
    salary: "10 £/h (incl. holiday pay)",
    currency: "£"
  )
  job_listing3 = JobListing.new(title: "Advertiser/Promoter for exciting sold out Eminem concert",
    category: "Promoter",
    description: "Maximise all selling opportunities in accordance with predefined rules / guidelines.",
    requirement: "You must not be afraid to approach potential customers. Exposure to loud noise and outdoor working are required.",
    schedule_detail: "One hour break will be provided for each shift. The break not necessarily will be taken on the same time could be taken on several times (2 x 30mins) or (4 x 20mins).",
    start_date: "Wednesday, 25 July 2018",
    end_date: "Friday, 27 July 2018",
    start_time: "8:00",
    end_time: "23:00",
    gender: "No preference",
    dress_code: "Street clothes. Please pay attention to the weather forecast on the day and make sure you dress accordingly.",
    salary: "$100 /day",
    currency: "USD"
  )
  job_listing4 = JobListing.new(title: "Helper for Event",
    category: "Event assistant",
    description: "Assists with making sure everything goes smoothly for the night.",
    requirement: "Must have experience in crisis management, bartending, serving, cleaning, and handling promotional, technical, and educational events.",
    schedule_detail: "Will have a 10-minute break.",
    start_date: "Friday, 20 July 2018",
    end_date: "Friday, 20 July 2018",
    start_time: "18:00",
    end_time: "22:00",
    gender: "No preference",
    dress_code: "Must wear typical nerd gear",
    salary: "60 euro",
    currency: "EUR"
  )
 job_listing5 = JobListing.new(title: "Host/Hostess/Server",
    category: "Host/Hostess",
    description: "Seating people and serving wines, beers, long drinks etc. key to this role is being smiley, proactive and extremely presentable.",
    requirement: "Must be able to serve guests with a smile, making drinks to spec, good cocktail understanding needed, spec sheet will be sent prior",
    schedule_detail: "You will receive 4 x 15 mins breaks.",
    start_date: "Sunday, 15 July 2018",
    end_date: "Sunday, 15 July 2018",
    start_time: "14:00",
    end_time: "23:30",
    gender: "Male",
    dress_code: "Clean Smart Black T-Shirt/ Black Jeans or Trousers (must have pockets)/ Black trainers or shoes",
    salary: "84 euro",
    currency: "EUR"
  )
  job_listing6 = JobListing.new(title: "Bartender for Classy Party",
    category: "Bartender",
    description: "Handling money and transactions and also using an Ipad.",
    requirement: "Good math skills and friendly demeanor.",
    schedule_detail: "One hour break will be provided for each shift. The break not necessarily will be taken on the same time could be taken on several times (2 x 30mins) or (4 x 20mins).",
    start_date: "Wednesday, 25 July 2018",
    end_date: "Wednesday, 25 July 2018",
    start_time: "15:00",
    end_time: "23:00",
    gender: "No preference",
    dress_code: "Presentation is of utmost importance. Long sleeved, crisp white shirt, black full length tailored trousers (strictly no jeans, chinos, leggings, skirts etc), smart 'leather look' black shoes (such as brogues). Strictly no suede, trainers, heels, boots (incl Dr Martins) or converse please. ",
    salary: "200 euro plus tips",
    currency: "EUR"
  )



event1 = Event.new(title: "2018 WOMEN'S HOCKEY WORLD CUP",
    description: "Hockey Competition",
    venue: "Lee Valley Hockey and Tennis Centre",
    venue_detail: "Gate 28",
    start_date: "Tuesday, 24 July 2018",
    end_date: "Tuesday, 31 July 2018",
    address: "Eton Manor, Queen Elizabeth Olympic Park, Leadmill Lane",
    city: "London",
    province: "London",
    zip_code: "E20 3AD",
    country: "UK",
  )
event2 = Event.new(title: "2018 WOMEN'S HOCKEY WORLD CUP",
    description: "Hockey Competition",
    venue: "Lee Valley Hockey and Tennis Centre",
    venue_detail: "Gate 125, Fish and Chips Restaurant",
    start_date: "Saturday, 21 July 2018",
    end_date: "Tuesday, 05 August 2018",
    address: "Eton Manor, Queen Elizabeth Olympic Park, Leadmill Lane",
    city: "London",
    province: "London",
    zip_code: "E20 3AD",
    country: "UK",
  )
event3 = Event.new(title: "Eminem Concert",
    description: "Rap Music Concert",
    venue: "Quicken Loans Arene",
    venue_detail: "Meet outside of Gate 35",
    start_date: "Wednesday, 25 July 2018",
    end_date: "Friday, 27 July 2018",
    address: "1 Center Ct",
    city: "Cleveland",
    province: "Ohio",
    zip_code: "44115",
    country: "USA"
  )
  event4 = Event.new(title: "Le Wagon Demo Day",
    description: "Groups present their projects",
    venue: "Le Wagon Building Palla Corda",
    venue_detail: "Inside, 2nd building, 2nd floor",
    start_date: "Friday, 20 July 2018",
    end_date: "Friday, 20 July 2018",
    address: "Corso Magenta, 52",
    city: "Milano",
    province: "MI",
    zip_code: "20123",
    country: "Italia",
  )
  event5 = Event.new(title: "Football World Cup Pool Party",
    description: "Football themed party with lots of alcohol",
    venue: "5 Star Hotel",
    venue_detail: "Rooftop",
    start_date: "Sunday, 15 July 2018",
    end_date: "Sunday, 15 July 2018",
    address: "Viale Certosa, 104",
    city: "Milano",
    province: "Milano",
    zip_code: "20156",
    country: "Italy",
  )
  event6 = Event.new(title: "Private Pool Black and White Party",
    description: "Party of 100 people in Black and White bathing suits",
    venue: "Ceresio 7 Building",
    venue_detail: "Rooftop pools",
    start_date: "Wednesday, 25 July 2018",
    end_date: "Wednesday, 25 July 2018",
    address: "Via Ceresio, 7",
    city: "Milano",
    province: "MI",
    zip_code: "20154",
    country: "Italia"
  )

booking1 = Booking.new(start_date: "Tuesday, 24 July 2018", end_date: "Tuesday, 31 July 2018", status: "accepted")
booking2 = Booking.new(start_date: "Saturday, 21 July 2018", end_date: "Tuesday, 05 August 2018", status: "declined")
booking3 = Booking.new(start_date: "Wednesday, 25 July 2018", end_date: "Friday, 27 July 2018", status: "accepted")
booking4 = Booking.new(start_date: "Friday, 20 July 2018", end_date: "Friday, 20 July 2018", status: "accepted")
booking5 = Booking.new(start_date: "Sunday, 15 July 2018", end_date: "Sunday, 15 July 2018", status: "declined")
booking6 = Booking.new(start_date: "Wednesday, 25 July 2018", end_date: "Wednesday, 25 July 2018", status: "accepted")


candidate1 = User.new(first_name: "Brigitte", last_name: "Bardot", role: "candidate", email: "brigitte@yahoo.com", password: "brigitte@yahoo.com",
    language: "Italian, English", experience: "10 years in the service industry. Model for 5 years.", ssn: "123456789", date_of_birth: "11/07/2003")
candidate2 = User.new(first_name: "Laura", last_name: "Paselli", role: "candidate", email: "laura@gmail.com", password: "laura@gmail.com",
    language: "Italian, French, German", experience: "4 years as a server in a high class restaurant. 3 years as a bartender. ", ssn: "444889918", date_of_birth: "21/07/1963")
candidate3 = User.new(first_name: "Cristiano", last_name: "Malgioglio", role: "candidate", email: "cristiano@test.com", password: "cristiano@test.com",
    language: "Italian, English", experience: "Butler for 20 years.", ssn: "987654321", date_of_birth: "12/30/1999")
candidate4 = User.new(first_name: "Al", last_name: "Bundy", role: "candidate", email: "al@hotmail.com", password: "al@hotmail.com",
    language: "Italian, French, German", experience: "Promoter for 3 years. Bartender for 5 years.", ssn: "444889918", date_of_birth: "21/07/1993")
candidate5 = User.new(first_name: "Randy", last_name: "Smith", role: "candidate", email: "randtheman@yahoo.com", password: "randtheman@yahoo.com@yahoo.com",
    language: "Italian, English", experience: "10 years in the service industry. Model for 5 years.", ssn: "543390789", date_of_birth: "18/07/1998")
candidate6 = User.new(first_name: "Anna", last_name: "Tabbi", role: "candidate", email: "tabbianna@gmail.com", password: "tabbianna@gmail.com",
    language: "Italian, French, German", experience: "4 years as a server in a high class restaurant. 3 years as a bartender. ", ssn: "444889918", date_of_birth: "21/07/1983")
candidate7 = User.new(first_name: "Francesca", last_name: "DeNiro", role: "candidate", email: "frenchie@gmail.com", password: "frenchie@gmail.com",
    language: "Italian, English", experience: "Maid for 15 years.", ssn: "987654321", date_of_birth: "06/06/1989")
candidate8 = User.new(first_name: "Stephanie", last_name: "Tanner", role: "candidate", email: "ladygirlsteph@hotmail.com", password: "ladygirlsteph@hotmail.com",
    language: "Italian, Spanish", experience: "Event assistant in beverage, serving, loading for 8 years", ssn: "444889918", date_of_birth: "21/07/1993")

employer1 = User.new(first_name: "Jeremiah", last_name: "Scrooge", company_name: "Woolworth", position: "Hiring manager",
    vat_number: "84921393",  land_phone: "+1 216 890 5673", role: "employer")
employer2 = User.new(first_name: "Arbi", last_name: "Velaj", company_name: "Spiambot", position: "Bossman",
    vat_number: "7836186",  land_phone: "+39 44 55 33 87", role: "employer")
employer3 = User.new(first_name: "Melissa", last_name: "Cavalli", company_name: "Cavalli Clothes", position: "Temporary HR Manager",
    vat_number: "9800016",  land_phone: "+39 12 22 89 08 ", role: "employer")
employer4 = User.new(first_name: "Marshall", last_name: "Mathers", company_name: "8 Mile Productions", position: "CEO",
    vat_number: "11110998",  land_phone: "+1 313 802 1219", role: "employer")
employer5 = User.new(first_name: "Jan", last_name: "Jansen", company_name: "Responsible Yoga", position: "Events Manager",
    vat_number: "9898336",  land_phone: "+39 73 65 77 12 ", role: "employer")
employer6 = User.new(first_name: "Jakob", last_name: "Alexander", company_name: "BeerTime", position: "CEO",
    vat_number: "1198498",  land_phone: "+39 22 84 74 28", role: "employer")





booking1.job_listing = job_listing1
booking1.user = candidate1
booking1.save

booking2.job_listing = job_listing2
booking2.user = candidate2
booking2.save

booking3.job_listing = job_listing3
booking3.user = candidate3
booking3.save

booking4.job_listing = job_listing4
booking4.user = candidate4
booking4.save

booking5.job_listing = job_listing5
booking5.user = candidate5
booking5.save

booking6.job_listing = job_listing6
booking6.user = candidate6
booking6.save

employer1.save
employer2.save
employer3.save
employer4.save
employer5.save
employer6.save

event1.user = employer1
event1.save
job_listing1.event = event1
job_listing1.save

event2.user = employer2
event2.save
job_listing2.event = event2
job_listing2.save

event3.user = employer3
event3.save
job_listing3.event = event3
job_listing3.save

event4.user = employer4
event4.save
job_listing4.event = event4
job_listing4.save

event5.user = employer5
event5.save
job_listing5.event = event5
job_listing5.save

event6.user = employer6
event6.save
job_listing6.event = event6
job_listing6.save


url1 = "http://res.cloudinary.com/orexibus/image/upload/v1530867814/Staffize%20profile%20pict/businesswoman-portrait-picture-id501368096.jpg"
candidate1.remote_photo_url = url1
candidate1.save

url2 = "http://res.cloudinary.com/orexibus/image/upload/v1530867801/Staffize%20profile%20pict/businesswoman2967123b.jpg"
candidate2.remote_photo_url = url2
candidate2.save

url3 = "http://res.cloudinary.com/orexibus/image/upload/v1530868104/Staffize%20profile%20pict/Lloyd-Morgan-crop.jpg"
candidate3.remote_photo_url = url3
candidate3.save

url4 = "http://res.cloudinary.com/orexibus/image/upload/v1530868091/Staffize%20profile%20pict/wpid-picsart_1389881209335.jpg"
candidate4.remote_photo_url = url4
candidate4.save












# candidate_one = User.new(first_name: "Brigitte", last_name: "Bardot", role: "candidate", email: "brigitte@test.com", password: "brigitte@test.com")
# candidate_two = User.new(first_name: "Laura", last_name: "Paselli", role: "candidate", email: "laura@test.com", password: "laura@test.com")
# candidate_three = User.new(first_name: "Cristiano", last_name: "Malgioglio", role: "candidate", email: "cristiano@test.com", password: "cristiano@test.com")
# candidate_four = User.new(first_name: "Al", last_name: "Yankovic", role: "candidate", email: "al@test.com", password: "al@test.com")












# job_one = JobListing.new(title: "Boggi is seeking for hostess for corporate congress",
#                         category: "hostess",
#                         description: "Hostess will need to greet guests upon arrival and give general
#                         directions about the venue and surrounding areas",
#                         dress_code: "Black dress, elegant shoes",
#                         start_date: "01/09/2018", end_date: "04/09/2018",
#                         start_time: "12:00", end_time: "20:00",
#                         schedule_detail: "07:00 - 19:00",
#                         salary: "200,00", currency: "EUR"
#                         )

# event_one = Event.new(title: "Fashion industry congress",
#                       description: "The most important fashion congress in Northern Italy",
#                       start_date: "01/09/2018", end_date: "04/09/2018",
#                       venue: "Hilton Hotel Milano", address: "Via Luigi Galvani, 12",
#                       zip_code: "20124", city: "Milano", province: "MI")

# employer_one = User.new(company_name: "ArbiEvents", role: "employer", email: "arbi@events.com", password: "arbi@events.com", password_confirmation: "arbi@events.com" )
# employer_one.save


# event_one.user = employer_one
# event_one.save
# job_one.event = event_one
# job_one.save



# job_two = JobListing.new(title: "Trade show model for RedBull Racing Night event",
#                         category: "hostess",
#                         description: "The girl will entertain guests during the event ",
#                         dress_code: "Denim shorts, RedBull top tank will be provided",
#                         start_date: "20/07/2018", end_date: "20/07/2018",
#                         start_time: "12:00", end_time: "20:00",
#                         schedule_detail: "19:00 - 02:00",
#                         salary: "200,00", currency: "EUR")

# event_two = Event.new(title: "RedBull Racing Night",
#                       description: "RedBull promotional night in famous nightclub",
#                       start_date: "09/07/2018", end_date: "09/07/2018",
#                       venue: "Discoteca Hotel Capo dei Greci", address: "Via Nazionale, 421",
#                       zip_code: "98030", city: "Sant'Alessio Siculo", province: "ME")

# job_two.event = event_two
# event_two.user = employer_one
# event_two.save
# job_two.save

# job_three = JobListing.new(title: "Le Wagon is seeking for hostess for corporate congress",
#                         category: "hostess",
#                         description: "Hostess will need to greet guests upon arrival and give general
#                         directions about the venue and surrounding areas",
#                         dress_code: "Black dress, elegant shoes",
#                         start_date: "01/09/2018", end_date: "04/09/2018",
#                         start_time: "12:00", end_time: "20:00",
#                         schedule_detail: "07:00 - 19:00",
#                         salary: "200,00", currency: "EUR")
# job_three.event = event_one
# job_three.save


# job_four = JobListing.new(title: "Polish speaker hostess to present new make-up products",
#                           category: "hostess",
#                           description: "Present our new make-up line to our Polish guests",
#                           start_date: "01/09/2018", end_date: "01/09/2018",
#                           start_time: "10:00", end_time: "19:00",
#                           schedule_detail: "10:00 - 18:00",
#                           salary: "150,00", currency: "EUR")

# event_three = Event.new(title: "Cosmetics for all by Rex Cosmetics",
#                       description: "Cosmetics fair for upcoming make-up lines",
#                       start_date: "11/09/2018", end_date: "14/09/2018",
#                       venue: "Hotel Golden Tulip Plaza.", address: "Viale Lamberti",
#                       zip_code: "81100", city: "Caserta", province: "CE")

# employer_three = User.new(company_name: "ArbiCosmetics", role: "employer", email: "arbi@cosmetics.com", password: "arbi@cosmetics.com" )


# employer_three.save
# event_three.user = employer_three
# event_three.save
# job_three.event = event_three
# job_four.save



# job_five = JobListing.new(title: "Interpreter needed for Doctor Ass. international conference",
#                           category: "interpreter",
#                           description: "Italian to French translator",
#                           dress_code: "Business smart",
#                           start_date: "12/07/2018", end_date: "12/07/2018",
#                           schedule_detail: "08:00 - 17:00",
#                           start_time: "12:00", end_time: "20:00",
#                           salary: "300,00", currency: "EUR")

# event_four = Event.new(title: "Mediators worldwide conference",
#                       description: "Worldwide meeting for mediation professionals",
#                       start_date: "07/09/2018", end_date: "07/09/2018",
#                       venue: "Villa Necchi Campiglio", address: "Via Mozart, 12",
#                       zip_code: "20122", city: "Milano", province: "MI")

# employer_four = User.new(company_name: "ArbiMediations", role: "employer", email: "arbi@mediations.com", password: "arbi@mediations.com")

# employer_four.save
# event_four.user = employer_four
# event_four.save
# job_five.event = event_four
# job_five.save

# job_six = JobListing.new(title: "Steward for cinema exhibition",
#                         category: "stweard",
#                         description: "Young man with short hair",
#                         dress_code: "Tie black",
#                         start_date: "22/07/2018", end_date: "26/07/2018",
#                         start_time: "12:00", end_time: "20:00",
#                         schedule_detail: "17:00 - 23:00",
#                         salary: "130,00", currency: "EUR")

# event_five = Event.new(title: "Venice cinema exhibition",
#                       description: "Showing of new indie films",
#                       start_date: "22/07/2018", end_date: "26/07/2018",
#                       venue: "Different venues in Lido di Venezia", address: "Lido Di Venezia",
#                       zip_code: "30126", city: "Venezia", province: "VE")

# employer_five = User.new(company_name: "Still-Arbi", role: "employer", email: "arbi@still.com", password: "arbi@still.com")


# employer_five.save
# event_five.user = employer_five
# event_five.save
# job_six.event = event_five
# job_six.save

# job_seven = JobListing.new(title: "Hostess for Arbi's soccer game",
#                           category: "hostess",
#                           description: "Hostess will escort Arbi's mates to the pitch",
#                           dress_code: "not required",
#                           start_date: "10/07/2018", end_date: "10/07/2018",
#                           start_time: "12:00", end_time: "20:00",
#                           schedule_detail: "20:00 - 23:00",
#                           salary: "20,00", currency: "EUR")

# event_six = Event.new(title: "Arbi's soccer game",
#                       description: "Soccer game to prove who's the best player",
#                       start_date: "10/07/2018", end_date: "10/07/2018",
#                       venue: "Campo comunale Cologna Spiaggia",
#                       address: "Via C. Romualdi, Piane Tordino",
#                       zip_code: "64026", city: "Cologna Spiaggia", province: "TE")

# employer_six = User.new(company_name: "Arbi", role: "employer", email: "arbi@soccer.com", password: "arbi@soccer.com")

# employer_six.save
# event_six.user = employer_six
# event_six.save
# job_seven.event = event_six
# job_seven.save


# candidate_one = User.new(first_name: "Brigitte", last_name: "Bardot", role: "candidate", email: "brigitte@test.com", password: "brigitte@test.com")
# candidate_two = User.new(first_name: "Laura", last_name: "Paselli", role: "candidate", email: "laura@test.com", password: "laura@test.com")
# candidate_three = User.new(first_name: "Cristiano", last_name: "Malgioglio", role: "candidate", email: "cristiano@test.com", password: "cristiano@test.com")
# candidate_four = User.new(first_name: "Al", last_name: "Yankovic", role: "candidate", email: "al@test.com", password: "al@test.com")


# url1 = "http://res.cloudinary.com/orexibus/image/upload/v1530867814/Staffize%20profile%20pict/businesswoman-portrait-picture-id501368096.jpg"
# candidate_one.remote_photo_url = url1
# candidate_one.save

# url2 = "http://res.cloudinary.com/orexibus/image/upload/v1530867801/Staffize%20profile%20pict/businesswoman2967123b.jpg"
# candidate_two.remote_photo_url = url2
# candidate_two.save

# url3 = "http://res.cloudinary.com/orexibus/image/upload/v1530868104/Staffize%20profile%20pict/Lloyd-Morgan-crop.jpg"
# candidate_three.remote_photo_url = url3
# candidate_three.save

# url4 = "http://res.cloudinary.com/orexibus/image/upload/v1530868091/Staffize%20profile%20pict/wpid-picsart_1389881209335.jpg"
# candidate_four.remote_photo_url = url4
# candidate_four.save


# booking1 = Booking.new(start_date: "07/09/2018", end_date: "07/09/2018")
# booking_one.job_listing = job_one
# booking_one.user = candidate_one
# booking_one.save

# booking_two = Booking.new(start_date: "10/09/2018", end_date: "10/09/2018")
# booking_two.job_listing = job_two
# booking_two.user = candidate_two
# booking_two.save

# booking_three = Booking.new(start_date: "08/08/2018", end_date: "10/08/2018")
# booking_three.job_listing = job_three
# booking_three.user = candidate_three
# booking_three.save








