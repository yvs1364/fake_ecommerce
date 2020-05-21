require "faker"
Product.destroy_all
User.destroy_all

yvs = User.create!(pseudo: "juicy", email: "yvan@mail.fr",password: "password")
puts "#{User.count} user created"

22.times do
  Product.create!(
    name: Faker::Name.name,
    description: Faker::TvShows::BojackHorseman.quote,
    price: rand(10...100)
  )
end
puts "#{Product.count} products created"
