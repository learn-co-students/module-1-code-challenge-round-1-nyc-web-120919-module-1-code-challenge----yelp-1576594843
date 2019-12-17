class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end 

  def my_reviews
    #should also be helpful in calculating number of reviews later
    Review.all.select {|review| review.customer == self}
  end 

  def restaurants
    my_reviews.map {|review| review.restaurant}.uniq
  end 

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end 

  def num_reviews
    #calls the my_reviews method above which may have reviews where the customer
      #reviewed the same restaurant more than once
    my_reviews.count 
  end 

  def self.find_by_name(full_name)
    #will need to call on the full_name method for the customer instance
    self.all.find {|customer| customer.full_name == full_name}
  end 

  def self.find_all_by_given_name(given_name)
    self.all.select {|customer| customer.given_name == given_name}
  end 

end
