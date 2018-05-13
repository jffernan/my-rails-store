# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# rails console: Show All Record => Modelname.all such as 'User.all'
#user = User.create(name: "David", occupation: "Code Artist")

Widget.create([
  {name: "Black Widget",
  description: "Ait arbor canis asperiores.",
  price: 5.00,
  quantity: 0,
  picture: "wblack.jpg"},
  {name: "Red Widget",
  description: "Avarus perferendis sit.",
  price: 10.00,
  quantity: 0,
  picture: "wred.jpg"},
  {name: "Blue Widget",
  description: "Triumphus spiculum adfectus tribuo.",
  price: 10.00,
  quantity: 0,
  picture: "wblue.jpg"},
  {name: "Green Widget",
  description: "Eaque patior verto facere.",
  price: 10.00,
  quantity: 0,
  picture: "wgreen.jpg"}
  ]
)
