
users = [
  {
    email: "maria@mail.com",
    first_name: "Maria",
    last_name: "Castro" ,
    password: 123456,
    admin: true
  },
  {
    email: "monica@mail.com",
    first_name: "Monica",
    last_name: "Nabais",
    password: 123456,
    admin: true
  },
  {
    email: "laura@mail.com",
    first_name: "Laura",
    last_name: "Lotti" ,
    password: 123456,
    admin: true
  },
  {
    email: "pavel@mail.com",
    first_name: "Pavel",
    last_name: "Naumov",
    password: 123456,
    admin: true
  },
  {
    email: "nick@mail.com",
    first_name: "Nicholas",
    last_name: "Major",
    password: 123456
  },
  {
    email: "shannon@mail.com",
    first_name: "Shannon",
    last_name: "Graybill",
    password: 123456
  },
  {
    email: "joana@mail.com",
    first_name: "Joana",
    last_name: "Reis",
    password: 123456
  },
  {
    email: "diogo@mail.com",
    first_name: "Diogo",
    last_name: "Telo",
    password: 123456
  },
  {
    email: "tony@mail.com",
    first_name: "Tony",
    last_name: "McShane",
    password: 123456
  },

]

users.each do |user|
  User.create(user)
end
