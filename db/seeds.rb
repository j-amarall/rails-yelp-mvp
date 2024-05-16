puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number:+49117672747644, category: "chinese" }
berlin = {name: "Berlin", address: "7 Boundary St, London E2 7JE", phone_number:+49117672747644, category: "chinese" }
paris = {name: "Paris", address: "7 Boundary St, London E2 7JE", phone_number:+49117672747644, category: "chinese" }
rom = {name: "Rom", address: "7 Boundary St, London E2 7JE", phone_number:+49117672747644, category: "chinese" }
prag = {name: "Prag", address: "7 Boundary St, London E2 7JE", phone_number:+49117672747644, category: "chinese" }


[dishoom, berlin, paris, rom, prag].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
  Review.create!(rating: 1, content: "Great food", restaurant_id: restaurant.id)
end
puts "Finished!"

