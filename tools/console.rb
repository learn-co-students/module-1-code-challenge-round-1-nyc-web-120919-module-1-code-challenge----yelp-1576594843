require_relative '../config/environment.rb'
require_relative '../app/models/customer'
require_relative '../app/models/review'
require_relative '../app/models/restaurant'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("name1", "family1")
c2 = Customer.new("name2", "family2")

rest1 = Restaurant.new("rest1")
rest2 = Restaurant.new("rest2")

rev1 = Review.new(c1, rest1, 5)
rev2 = Review.new(c1, rest2, 4)
rev3 = Review.new(c2, rest1, 3)
rev4 = Review.new(c2, rest2, 2)
rev5 = Review.new(c1, rest1, 6)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line