# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Widget.create(
  name: "wblack",
  description: "Ait arbor canis asperiores adipiscor aut.",
  price: 5,
  quantity: 0,
  picture: "/app/assets/images/wblack.jpg"
)

Widget.create(
  name: "wred",
  description: "Avarus perferendis sit.",
  price: 10,
  quantity: 0,
  picture: "/app/assets/images/wred.jpg"
)

Widget.create(
  name: "wblue",
  description: "Triumphus spiculum adfectus tribuo.",
  price: 10,
  quantity: 0,
  picture: "/app/assets/images/wblue.jpg"
)

Widget.create(
  name: "wgreen",
  description: "Eaque patior verto facere aeternus apud.",
  price: 10,
  quantity: 0,
  picture: "/app/assets/images/wgreen.jpg"
)
#image_tag automatically looks up images in the \public\images folder
