HazardNotification.destroy_all
User.destroy_all

users = [
  {
    email: "maria@mail.com",
    first_name: "Maria",
    last_name: "Castro",
    password: 123456,
    admin: true,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658296/e299buhvwgqmv5j3hfmw.jpg"
  },
  {
    email: "monica@mail.com",
    first_name: "Monica",
    last_name: "Nabais",
    password: 123456,
    admin: true,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658332/mmmfxkenqoq1kyocsqwt.jpg"
  },
  {
    email: "laura@mail.com",
    first_name: "Laura",
    last_name: "Lotti" ,
    password: 123456,
    admin: true,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658287/dnx07ytgno6cbqebz0pc.png"
  },
  {
    email: "pavel@mail.com",
    first_name: "Pavel",
    last_name: "Naumov",
    password: 123456,
    admin: true,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658344/gvyfhk7rzbwlzqxvqzpv.jpg"
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
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658280/cdfuu4yueqm4tlin6qiz.jpg"
  },
  {
    email: "diogo@mail.com",
    first_name: "Diogo",
    last_name: "Telo",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658251/olsxx3cja8nqme68pkb3.jpg"
  },
  {
    email: "tony@mail.com",
    first_name: "Tony",
    last_name: "McShane",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658382/jvqolbgcknhuggazrved.jpg"
  },
  {
    email: "todd@mail.com",
    first_name: "Todd",
    last_name: "Johnson",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658369/riryh2supxjumbweene3.png"
  },
  {
    email: "swen@mail.com",
    first_name: "Swen",
    last_name: "Kunzel",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658358/tlqhr47u7om1q6m2bfwi.jpg"
  },
  {
    email: "pedro@mail.com",
    first_name: "Pedro",
    last_name: "Marzagao",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658351/d1wbqf8cl7tzoywo84oy.jpg"
  },
  {
    email: "michel@mail.com",
    first_name: "Michel",
    last_name: "Wlodarczyk",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658324/rwjtxueb78d9iwaf0pqe.jpg"
  },
  {
    email: "max@mail.com",
    first_name: "Max",
    last_name: "Stilp",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658316/mwg39wasc8dl5eizkbxn.jpg"
  },
  {
    email: "marta@mail.com",
    first_name: "Marta",
    last_name: "Bras",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658306/rlizehvaqgk2qyd5qpnk.jpg"
  },
  {
    email: "jerome@mail.com",
    first_name: "Jerome",
    last_name: "Dharveng",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658271/ufgt2thmlwdn33vfgssz.jpg"
  },
  {
    email: "emily@mail.com",
    first_name: "Emily",
    last_name: "Burns",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658262/g3gdvunqqv0tiwbdt9ep.jpg"
  },
  {
    email: "david@mail.com",
    first_name: "David",
    last_name: "Zwagemaker",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658240/fsi9q8anu8wsjvm63pvs.jpg"
  },
  {
    email: "catarina@mail.com",
    first_name: "Catarina",
    last_name: "Cota",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658231/kvdrwpzyvxpnytxyrkoo.jpg"
  },
  {
    email: "arthur@mail.com",
    first_name: "Arthur",
    last_name: "Pfister",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658196/e9ouy9bcvg4kob102k17.jpg"
  },
  {
    email: "antoine@mail.com",
    first_name: "Antoine",
    last_name: "Quellier",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658178/emrlor8n4qpc6lvzgy4n.jpg"
  },
  {
    email: "andreia@mail.com",
    first_name: "Andreia",
    last_name: "Domingues",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658157/wxpf7tcv4uqpedrrdoaf.jpg"
  },
  {
    email: "alessandra@mail.com",
    first_name: "Alessandra",
    last_name: "Patricio",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658141/gfea7nwmd8engixdgkvl.jpg"
  },
  {
    email: "alex@mail.com",
    first_name: "Alexander",
    last_name: "Auer",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528658131/bfpx11gcj11zmunwuaad.jpg"
  },
  {
    email: "abel@mail.com",
    first_name: "Abel",
    last_name: "Locati",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/v1528657384/oqng40ogitbkzzump0he.jpg"
  },
  {
    email: "mmaria@mail.com",
    first_name: "Maria",
    last_name: "Santos",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/c_crop,h_533,w_533/v1528662217/ovfqddoetzemh79smmds.jpg"
  },
  {
    email: "paulo@mail.com",
    first_name: "Paulo",
    last_name: "Pinto",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/c_crop,h_533,w_533/v1528662565/ydyzihxmxdk95dzfyvmm.jpg"
  },
  {
    email: "marta_sousa@mail.com",
    first_name: "Marta",
    last_name: "Sousa",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/c_crop/v1528662160/sepvabkecgn6clkd0gku.jpg"
  },
  {
    email: "joao@mail.com",
    first_name: "Joao",
    last_name: "Marques",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/c_crop,h_533,w_533/v1528662681/knln6dkuabwonhjabhjc.jpg"
  },
  {
    email: "amelia@mail.com",
    first_name: "Amelia",
    last_name: "Sousa",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/c_crop,h_600,w_600/v1528662749/bvnngreoooypecoolyt8.jpg"
  },
  {
    email: "carlos@mail.com",
    first_name: "Carlos",
    last_name: "Nabais",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/c_crop/v1528662098/actjag7ngg6ydq08e1gy.jpg"
  },
  {
    email: "marco@mail.com",
    first_name: "Marco",
    last_name: "Sousa",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/c_crop,h_300,w_300/v1528662895/ypaox6damrvv1gdcqld6.jpg"
  },
  {
    email: "andreia_vale@mail.com",
    first_name: "Andreia",
    last_name: "Vale",
    password: 123456,
    avatar: "http://res.cloudinary.com/mnabais/image/upload/c_crop,h_800,w_800/v1528663027/ttxberweavk8nrxm4g4s.jpg"
  }
]

users.each do |user|
  User.create(user)
end
