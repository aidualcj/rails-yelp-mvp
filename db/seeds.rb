puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants = [
  { name: "Epicure", address: "75008 Paris", phone_number: "0123456789", category: "french" },
  { name: "Nobu", address: "Tokyo, Japan", phone_number: "+81 90-1234-5678", category: "japanese" },
  { name: "Pizza East", address: "Shoreditch, London", phone_number: "+44 20 7729 1888", category: "italian" },
  { name: "Maison Antoine", address: "Brussels, Belgium", phone_number: "+32 2 230 31 32", category: "belgian" },
  { name: "Dragon Palace", address: "Chinatown, San Francisco", phone_number: "+1 415-123-4567", category: "chinese" }
]

Restaurant.create!(restaurants)
puts "Finished!"
