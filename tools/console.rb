require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("Michelle", "Smith")
customer2 = Customer.new("Alina", "Jones")
customer3 = Customer.new("Morgan", "Lopez")
customer4 = Customer.new("Carina", "Thomas")
customer5 = Customer.new("Zhanna", "Kogan")

restaurant1 = Restaurant.new("Restaurant1")
restaurant2 = Restaurant.new("Restaurant2")
restaurant3 = Restaurant.new("Restaurant3")
restaurant4 = Restaurant.new("Restaurant4")
restaurant5 = Restaurant.new("Restaurant5")

review1 = Review.new(customer1, restaurant1, 3)
review2 = Review.new(customer1, restaurant2, 4)
review3 = Review.new(customer1, restaurant3, 2)
review4 = Review.new(customer2, restaurant4, 4)
review5 = Review.new(customer2, restaurant5, 4)
review6 = Review.new(customer3, restaurant1, 4)
review7 = Review.new(customer4, restaurant2, 5)
review8 = Review.new(customer4, restaurant3, 1)
review9 = Review.new(customer5, restaurant4, 5)
review10 = Review.new(customer5, restaurant5, 3)
review11 = Review.new(customer1, restaurant5, 3)
review12 = Review.new(customer4, restaurant3, 2)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line