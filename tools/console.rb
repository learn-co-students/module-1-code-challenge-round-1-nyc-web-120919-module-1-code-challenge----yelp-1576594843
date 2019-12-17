require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### Initializers

alona = Customer.new("Alona", "Matokhina")
phoebe = Customer.new("Phoebe", "Buffay")
rachel = Customer.new("Rachel", "Green")
joey = Customer.new("Joey", "Tribbiani")
joeys_namesake = Customer.new("Joey", "Johnson")

restaurant1 = Restaurant.new("Central Perk")
restaurant2 = Restaurant.new("Chez Panisse")
restaurant3 = Restaurant.new("Souvla")
restaurant4 = Restaurant.new("Stacks")

review1 = alona.add_review(restaurant3, 5)
review2 = Review.new(phoebe, restaurant1, 5)
review3 = joey.add_review(restaurant2, 3)
review4 = rachel.add_review(restaurant1, 4)
review5 = Review.new(alona, restaurant4, 4)
review3 = joey.add_review(restaurant1, 5)


###Customer testing

puts ">>> Test Customer.all and #full_name <<<"
Customer.all.each{|customer| puts customer.full_name}

puts ">>> Test Customer#reviews <<<"
alona.reviews.each{|review| puts "#{review.rating} for #{review.restaurant.name}"}

puts ">>> Test Customer#restaurants <<<"
alona.restaurants.each{|restaurant| puts restaurant.name}

puts ">>> Test Customer#add_review with negative or not an integer <<<"
puts alona.add_review(restaurant1, -3.5)
puts alona.add_review(restaurant1, "2")

puts ">>> Test Customer#num_reviews <<<"
puts alona.num_reviews

puts ">>> Test Customer.find_by_name <<<"
puts Customer.find_by_name("Alona Matokhina")

puts ">>> Test Customer.find_all_by_given_name <<<"
puts Customer.find_all_by_given_name("Joey")

###Restaurant testing
puts ">>> Test Restaurant#reviews <<<"
restaurant1.reviews.each{|review| puts "#{review.rating} from #{review.customer.full_name}"}

puts ">>> Test Restaurant#customers <<<"
restaurant1.customers.each{|customer| puts customer.full_name}

puts ">>> Test Restaurant#average_star_rating <<<"
puts restaurant1.average_star_rating



#binding.pry
0 #leave this here to ensure binding.pry isn't the last line