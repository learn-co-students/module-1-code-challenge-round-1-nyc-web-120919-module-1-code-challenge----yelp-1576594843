require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



# Restaurant

rest1 = Restaurant.new("Maria's Tacos")
rest2 = Restaurant.new("Bobby's Pasta")
rest3 = Restaurant.new("Mama's Cookin")

# Customer

customer1 = Customer.new("Sally", "Johnson")
customer2 = Customer.new("Laura", "Dolly")
customer3 = Customer.new("John", "Freezer")


# Review def initialize(customer, restaurant, int)

review1 = Review.new(customer1, rest1, 3)
review2 = Review.new(customer2, rest3, 5)
review3 = Review.new(customer3, rest2, 1)
review4 = Review.new(customer1, rest3, 2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line