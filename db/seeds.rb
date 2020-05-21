require "faker"
Product.destroy_all
puts "#{Product.count} products destroy"

22.times do
  Product.create!(
    name: Faker::Name.name,
    description: Faker::TvShows::BojackHorseman.quote,
    price: rand(10...100)
  )
end
puts "#{Product.count} products created"
