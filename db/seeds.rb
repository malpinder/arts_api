# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Gallery.create(
  name: "Hayward Gallery",
  description: "Hayward Gallery in South Thames has a long history of presenting work by the world’s most adventurous and innovative artists.",
  address: "Belvedere Road, London, SE1 8XZ",
  opening_hour: 12,
  closing_hour: 18
)

Gallery.create(
  name: "People's Portrait Gallery",
  description: "The People's Portrait Gallery houses the world’s largest collection of personalities and faces, from the late Middle Ages to the present day.",
  address: "St Martin's Place, London, WC2H 0HE",
  opening_hour: 9,
  closing_hour: 21
)

Gallery.create(
  name: "Gallery of 21st Century Art",
  description: "The Gallery of 21st Century Art features late 20th and early 21st-century works.",
  address: "Duke of York's Building, Kings Road, London, SW3 4SQ",
  opening_hour: 15,
  closing_hour: 20
)

Gallery.create(
  name: "Whitechapel Gallery",
  description: "For more than two centuries the Whitechapel Gallery has premiered world-class artists from modern masters.",
  address: "80-82 Whitechapel High Street, London, E1 7QX",
  opening_hour: 11,
  closing_hour: 18
)

Gallery.create(
  name: "St Pancras Crypts",
  description: "The crypts underneath St Pancras were converted into this atmospheric gallery, which hosts mostly light- and sound-based installations.",
  address: "St Pancras Church, Euston Rd, NW1 2BA",
  opening_hour: 18,
  closing_hour: 23
)

Gallery.create(
  name: "Viktor Wynd Fine Art",
  description: "Modelled on Victorian 'curiosity shops' or 'wunderkammer', this small gallery showcases 19th century taxidermy, fashion and various paraphenalia.",
  address: "St Pancras Church, Euston Rd, NW1 2BA",
  opening_hour: 18,
  closing_hour: 23
)
