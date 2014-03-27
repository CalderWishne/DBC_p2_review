garfield = Cat.create!(name: "Garfield", favorite_food: "lasagna")
nermal = Cat.create!(name: "Nermal", favorite_food: "veggies")

john = Human.create!(name: "John", sex: "male")

liz = Vet.create!(name: "Liz")

garfield.slaves << john
john.pets << nermal
puts "-----------------------------------"
puts
puts
liz.customers << john
puts
puts
puts "------------------------------------"
liz.patients << garfield << nermal


