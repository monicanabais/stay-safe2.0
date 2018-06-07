
# users = [
#   {
#     email: "maria@mail.com",
#     first_name: "Maria",
#     last_name: "Castro" ,
#     password: 123456
#   },
#   {
#     email: "monica@mail.com",
#     first_name: "Monica",
#     last_name: "Nabais",
#     password: 123456
#   },
#   {
#     email: "laura@mail.com",
#     first_name: "Laura",
#     last_name: "Lotti" ,
#     password: 123456
#   },
#   {
#     email: "pavel@mail.com",
#     first_name: "Pavel",
#     last_name: "Naumov",
#     password: 123456
#   },
#   {
#     email: "nick@mail.com",
#     first_name: "Nicholas",
#     last_name: "Major",
#     password: 123456
#   },
#   {
#     email: "shannon@mail.com",
#     first_name: "Shannon",
#     last_name: "Graybill",
#     password: 123456
#   },
#   {
#     email: "joana@mail.com",
#     first_name: "Joana",
#     last_name: "Reis",
#     password: 123456
#   },
#   {
#     email: "diogo@mail.com",
#     first_name: "Diogo",
#     last_name: "Telo",
#     password: 123456
#   },
#   {
#     email: "tony@mail.com",
#     first_name: "Tony",
#     last_name: "McShane",
#     password: 123456
#   },

# ]

  puts "Cleaning up database"
  User.delete_all

  100.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 123456
    )
    user.save
  end

  puts "Created #{User.count} users"