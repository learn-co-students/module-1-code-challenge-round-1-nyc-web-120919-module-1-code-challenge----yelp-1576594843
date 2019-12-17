require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer1 = Customer.new("Alisher", "Fayzimatov")
customer2 = Customer.new("Tony", "XX_reddarkness_XX")
customer3 = Customer.new("Benjamin", "The guy")
restaurant1 = Restaurant.new("Half-Baked-Goods")
restaurant2 = Restaurant.new("Unbaked Cakes")
restaurant3 = Restaurant.new("Baked Cakes")
rating1 = 1 
rating2 = 2 
rating3 = 3
rating4 = 4
rating5 = 5
customer3.full_name # => Benjamin The Guy
Review1 = Review.new(customer1,restaurant3,rating5)
Review2 = Review.new(customer3, restaurant2, rating1)
Review3 = Review.new(customer2, restaurant1, rating4)
Review4 = Review.new(customer2, restaurant3, rating2)
Review5 = Review.new(customer2, restaurant3, rating2)
Review6 = Review.new(customer2, restaurant3, rating3)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line