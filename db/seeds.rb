puts "🌱 Seeding spices..."

# Seed your database here
puts "Creating hotels..."
villa_rosa = Hotel.create(name: "Villa Rosa Kempinski", location: "Nairobi, Kenya", price: "73000",description:"Five star Hotel,Motel,Conference Rooms")
miami = Hotel.create(name: "Miami Hotel", location: "Nairobi, Kenya", price: "38000",description:"Five star restaurant")
stem = Hotel.create(name: "The stem Hotel", location: "Nairobi, Kenya", price: "58000",description:"Five star with meeting rooms")
coyote = Hotel.create(name: "Coyote Hotel", location: "Nairobi, Kenya", price: "110000",description:"Five star ,suitable for outside gathering")
hilton = Hotel.create(name: "Hilton Hotel", location: "Nairobi, Kenya", price: "42000",description:"Five star,with spacious rooms")

puts "Creating customer_reviews"
review1 = Review.create(body: "Good place to stay. Clean place, modern room and nice staff", hotel_id: kempinski.id)
review2 = Review.create(body: "Homely stay with lovely stay. Breakfast was tasty with lots of variety. Great location next to all of Nairobi's main attractions", hotel_id: miami.id)
review3 = Review.create(body: "The whole compound is like paradise with vast and very beautiful and peaceful garden", hotel_id: stem.id)
review4 = Review.create(body: "The most beautiful guest house with the most lovely, warm and welcoming hosts", hotel_id: coyote.id)
review5 = Review.create(body: "Really good breakfast, cozy rooms, good beds and very nice and helpful owners", hotel_id: hilton.id)
puts "✅ Done seeding!"
