# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

greetingsExample = ["Hello", "Hola", "Bonjour", "Ciao", "Hallo", "Hej", "Ahoj", "Konnichiwa", "Anyoung", "Salam", "Merhaba", "Szia", "Namaste", "Sawubona"]

greetingsExample.each do |greeting|
    Greeting.create(text: greeting)
end
