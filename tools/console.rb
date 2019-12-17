require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customers
  customer1 = Customer.new("John", "Smith")
  customer2 = Customer.new("Joe", "Shmo")
  customer3 = Customer.new("Ben", "Franklin")
  customer4 = Customer.new("John", "Shmo")
#restaurants
  rest1 = Restaurant.new("Dominos")
  rest2 = Restaurant.new("Subway")
#reviews
  review1 = Review.new(customer1, rest1, 4.0)
  review2 = Review.new(customer1, rest2, 3.0)
  review3 = Review.new(customer2, rest2, 2.0)
  review4 = Review.new(customer2, rest2, 3.0)
  review5 = Review.new(customer1, rest1, 5.0)
  

binding.pry
0 #leave this here to ensure binding.pry isn't the last line