require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Customer.new("meredith", "welch")
c2 = Customer.new("meagan", "brandriff")
c3 = Customer.new("stephen", "graziano")
c4 = Customer.new("susan", "killeffer")
c5 = Customer.new("susan", "jones")

rest1 = Restaurant.new("TGIFridays")
rest2 = Restaurant.new("La Vara")
rest3 = Restaurant.new("Henry Public")
rest4 = Restaurant.new("Long Island Bar")
rest5 = Restaurant.new("Monteros")

review1 = Review.new(c1,rest1,1)
review2 = Review.new(c2,rest2,2)
review3 = Review.new(c3,rest3,3)
review4 = Review.new(c4,rest4,4)
review5 = Review.new(c1,rest4,1)
review6 = Review.new(c2,rest4,9)
review7 = Review.new(c1,rest2,196)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line