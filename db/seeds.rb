# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
actor.save

Movie.create(title: "Monty Python and the Holy Grail", year: 1975, plot: "A comedic send-up of the grim circumstances of the Middle Ages as told through the story of King Arthur and framed by a modern-day murder investigation. When the mythical king of the Britons leads his knights on a quest for the Holy Grail, they face a wide array of horrors, including a persistent Black Knight, a three-headed giant, a cadre of shrubbery-challenged knights, the perilous Castle Anthrax, a killer rabbit, a house of virgins, and a handful of rude Frenchmen.
")
  
Movie.create(title: "Last Holiday", year: 2011, plot: "The discovery that she has a terminal illness prompts introverted saleswoman Georgia Byrd (Queen Latifah) to reflect on what she realizes has been an overly cautious life. So Georgia withdraws her life savings and jets off to Europe where she lives like a millionaire. Upbeat and passionate, Georgia charms everybody she meets, including renowned Chef Didier (Gérard Depardieu). The only one missing from her new life is her longtime crush Sean Matthews (LL Cool J).
")