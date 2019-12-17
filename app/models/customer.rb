class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self # we are storing given_name & family name for an object id
  end
  def full_name
    "#{given_name} #{family_name}"
  end
  def self.all
    @@all
  end 
  def get_array_for_all_restaurants_visited_by_customer
    Review.all.select{|review| review.customer == self}
  end #returns customer ID
  def restaurants #returns all the restaurants a customer has been in
    get_array_for_all_restaurants_visited_by_customer.map{|review| review.restaurant}.uniq
  end 
  def add_review(restaurant, rating)
    Review.new(self,restaurant, rating)
  end #do customer3.add_review(restaurant1, 3) in pry
  def num_reviews
    get_array_for_all_restaurants_visited_by_customer.count
  end #this takes customer id, then passes it into the helper, then counts the object id's
  def self.find_by_name(name)
    #Review.all.find_first{|review| review.customer == self}
    #This one is very complex i would do 
    # array4 = get_array_for_all_restaurants_visited_by_customer
    #array5 = array4.map{|review| review.customer}
    #array6 = array5.reduce{|customer| customer.family_name + customer.given_name}
    #but the code smells, and the instructions aren't clear as to what it wants 
    #me to get from it
  end
  def self.find_all_by_given_name(name)
    Review.all.select{|review| review.customer.given_name == self}
  end
end
