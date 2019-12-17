class Customer
  attr_accessor :given_name, :family_name

  @@all = [] 
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{@given_name} #{@family_name}" #interpolates given_name and family_name of current customer instance
  end

  def restaurants
    cust_reviews = Review.all.select do |review|  #iterate over Review.all, select all reviews where 
      review.customer == self                     #review.customer == self, put these review instances
    end                                           #into new array called 'cust_reviews'.
    cust_restaurants = cust_reviews.map do |review|   #iterate over cust_reviews array, map all members 
      review.restaurant                              # to target review.restaurant. Rename array to cust_restaurants.
    end                       
    cust_restaurants.uniq                           #call all unique members of array cust_restaurants.                    
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)           #creates new review, associates review with self, 
  end                                                 #restaurant, and rating

  def num_reviews
    cust_reviews = Review.all.select do |review|    
      review.customer == self 
    end 
    cust_reviews.length 
  end

  def self.find_by_name(full_name)
    self.all.find do |customer|
      customer.full_name == full_name
    end
  end

  def self.find_all_by_given_name(given_name)
    self.all.select do |customer|
      customer.given_name == given_name
    end
  end

end
