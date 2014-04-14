# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

hayward = Gallery.create(
  name: "Hayward Gallery",
  description: "Hayward Gallery in South Thames has a long history of presenting work by the world’s most adventurous and innovative artists.",
  address: "Belvedere Road, London, SE1 8XZ",
  opening_hour: 12,
  closing_hour: 18
)

ppgallery = Gallery.create(
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

whitechapel = Gallery.create(
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

Exhibition.create(
  gallery_id: hayward.id,
  opens_on: 2.days.ago,
  closes_on: 3.months.from_now,
  name: "Futurism Then And Now",
  description: "A collection of futurism works, displayed alongside modern interpretrations.",
  entry_fee: 1500,
  max_tickets: 50
)

Exhibition.create(
  gallery_id: ppgallery.id,
  opens_on: 4.months.ago,
  closes_on: 6.days.from_now,
  name: "Tyrants throughout the ages",
  description: "Come face to face with history's tyrants and despots, with pictures from the 2000 BC right up to the modern day.",
  entry_fee: 2500,
  max_tickets: 75
)

Exhibition.create(
  gallery_id: whitechapel.id,
  opens_on: 4.months.ago,
  closes_on: 3.days.ago,
  name: "Impressionism: reality or fiction?",
  description: "Explore modern interpretations of impressionism.",
  entry_fee: 1750,
  max_tickets: 20
)

Exhibition.create(
  gallery_id: whitechapel.id,
  opens_on: 5.days.from_now,
  closes_on: 5.months.from_now,
  name: "Beyond space: telegraphism and you",
  description: "Featuring some star works by mordern artists, this exhibition explores the new London movement of telegraphism.",
  entry_fee: 1200,
  max_tickets: 5
)
