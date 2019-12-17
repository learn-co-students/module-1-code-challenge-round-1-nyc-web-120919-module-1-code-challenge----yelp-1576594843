require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer1 = Customer.new("John", "Porridge")
customer2 = Customer.new("Sally", "Saltine")
customer3 = Customer.new("Sally", "Shellfish")

restaurant1 = Restaurant.new("Salty Spitoon")
restaurant2 = Restaurant.new("Weenie Hut Jr.")

review1 = Review.new(customer1, restaurant1, 5)
review2 = Review.new(customer1, restaurant1, 4)
review3 = Review.new(customer1, restaurant1, 4)
review4 = Review.new(customer2, restaurant1, 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line