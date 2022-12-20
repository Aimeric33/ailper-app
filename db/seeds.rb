puts "-----------------"
puts "Starting the seed"
puts "-----------------"

puts "-----------------"
puts "Cleaning the db"
puts "-----------------"

User.destroy_all

puts "-----------------"
puts "Creating users ▶️"
puts "-----------------"

User.create(
  first_name: "Aimeric",
  last_name: "Marchau",
  address: "2 T rue de Bethmann 33000 Bordeaux",
  email: "aimeric@ailper.com",
  password: "lewagon",
  helper: true
)

User.create(
  first_name: "Elon",
  last_name: "Musk",
  address: "100 rue Sainte Catherine 33000 Bordeaux",
  email: "elon@ailper.com",
  password: "lewagon",
  helper: true
)

User.create(
  first_name: "Jeanine",
  last_name: "Dupond",
  address: "200 rue Fondaudège 33000 Bordeaux",
  email: "jeanine@ailper.com",
  password: "lewagon",
  helper: false
)

User.create(
  first_name: "Martine",
  last_name: "Durand",
  address: "10 cours de Verdun 33000 Bordeaux",
  email: "martine@ailper.com",
  password: "lewagon",
  helper: false
)

puts "-----------------"
puts "Users created 🟢"
puts "-----------------"

puts "-----------------"
puts "Creating categories ▶️"
puts "-----------------"

Category.create(
  name: "Ordinateurs",
  photo: "https://images.unsplash.com/photo-1594975960347-741e85f3e8ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=830&q=80"
)

Category.create(
  name: "Smartphones",
  photo: "https://images.unsplash.com/photo-1573798741449-ab9612aba291?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80"
)

Category.create(
  name: "Imprimantes",
  photo: "https://images.pexels.com/photos/7014415/pexels-photo-7014415.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)

Category.create(
  name: "Objets connectés",
  photo: "https://images.pexels.com/photos/4790257/pexels-photo-4790257.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)

puts "-----------------"
puts "Categories created 🟢"
puts "-----------------"

puts "-----------------"
puts "Creating requests ▶️"
puts "-----------------"

Request.create(
  title: "Problème d'imprimante Epson",
  price: 15,
  description: "Mon imprimante ne fonctionne plus... Je peux l'allumer mais c'est impossible d'imprimer une page... Je ne trouve pas le problème",
  user: User.third
)

Request.create(
  title: "Problème de stockage sur mon téléphone",
  price: 10,
  description: "Quand je prends une photo, mon téléphone me dit que je n'ai plus de place. Pourtant, je n'ai rien dans mon téléphone. Que faire?",
  user: User.third
)

Request.create(
  title: "Mon ordinateur ne marche plus",
  price: 20,
  description: "Mon ordinateur me fait un écran bleu tout le temps, je ne sais pas quoi faire pour l'allumer",
  user: User.fourth
)

Request.create(
  title: "Mon ordinateur n'a pas plus de son",
  price: 16,
  description: "Du jour au lendemain, le son de mon ordinateur ne fonctionne plus. J'ai rien fait, je ne sais pas pourquoi",
  user: User.fourth
)

puts "-----------------"
puts "Requests created 🟢"
puts "-----------------"

puts "-----------------"
puts "Creating requests' categories ▶️"
puts "-----------------"

RequestCategory.create(
  request: Request.first,
  category: Category.third
)

RequestCategory.create(
  request: Request.second,
  category: Category.second
)

RequestCategory.create(
  request: Request.third,
  category: Category.first
)

RequestCategory.create(
  request: Request.fourth,
  category: Category.first
)

puts "-----------------"
puts "Requests' categories created 🟢"
puts "-----------------"

puts "-----------------"
puts "Creating bookings ▶️"
puts "-----------------"

Booking.create(
  user: User.first,
  date: DateTime.new(2023,1,2,8,15),
  request: Request.first,
  status: :pending
)

Booking.create(
  user: User.first,
  date: DateTime.new(2023,1,4,9,30),
  request: Request.second,
  status: :accepted
)

Booking.create(
  user: User.second,
  date: DateTime.new(2023,1,6,20,30),
  request: Request.third,
  status: :rejected
)

Booking.create(
  user: User.second,
  date: DateTime.new(2023,1,8,17,30),
  request: Request.third,
  status: :pending
)

puts "-----------------"
puts "Bookings created 🟢"
puts "-----------------"

puts "-----------------"
puts "Seed finished"
puts "-----------------"
