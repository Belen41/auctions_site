# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

i=0
while i < 10
  user= User.create(name: "User #{i}", email: "User#{i}@example.com")
  user.products.create(title: "Product #{i}", description: "This is the description of product#{i}", deadline: Time.at(rand*Time.now.to_i))
  i+=1
end
