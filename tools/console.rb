require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# customer (given_name, family_name)
c1 = Customer.new("eunice", "kim")
c7 = Customer.new("eunice", "lee")
c2 = Customer.new("christine", "kim")
c3 = Customer.new("deb", "wong")
c4 = Customer.new("steven", "wong")
c5 = Customer.new("rachael", "kim")
c6 = Customer.new("justin", "hong")

# restaurant (name)
rest1 = Restaurant.new("roses luxury")
rest2 = Restaurant.new("pineapple and pearl")
rest3 = Restaurant.new("coastal flats")
rest4 = Restaurant.new("pourhouse")

# review (customer, restaurant, rating)
review1 = Review.new(c1, rest1, 5)
review2 = Review.new(c5, rest2, 5)
review3 = Review.new(c4, rest3, 3)
review4 = Review.new(c2, rest4, 2)
review5 = Review.new(c3, rest1, 5)
review6 = Review.new(c1, rest1, 2)
review7 = Review.new(c6, rest1, 3)
review8 = Review.new(c6, rest2, 2)
review8 = Review.new(c6, rest1, 2)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line