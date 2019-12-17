require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Jacob", "Kenny")
customer2 = Customer.new("Sharon", "Stone")
customer3 = Customer.new("Jacob", "Scott")
customer4 = Customer.new("Samuel", "Jackson")
customer5 = Customer.new("Denard", "Robinson")
customer6 = Customer.new("Donovan", "McNabb")
customer7 = Customer.new("Sharon", "Stone")

restaurant1 = Restaurant.new("Applebees")
restaurant2 = Restaurant.new("Dominos")
restaurant3 = Restaurant.new("Croton")
restaurant4 = Restaurant.new("Times Square Olive Garden")
restaurant5 = Restaurant.new("Jimmy Johns")

review1 = Review.new(customer1, restaurant1, 9)
review2 = Review.new(customer1, restaurant2, 6)
review3 = Review.new(customer1, restaurant3, 3)
review4 = Review.new(customer2, restaurant1, 7)
review5 = Review.new(customer2, restaurant1, 8)
review6 = Review.new(customer3, restaurant4, 10)
review7 = Review.new(customer4, restaurant5, 7)
review8 = Review.new(customer5, restaurant1, 2)
review9 = Review.new(customer6, restaurant2, 8)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line