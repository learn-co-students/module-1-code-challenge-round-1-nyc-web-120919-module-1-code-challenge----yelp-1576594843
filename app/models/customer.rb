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

  def restaurants
    Review.all.select do |review|
    review.customer == self
    end.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end


  def num_reviews
    Review.all.map do |customer|
      customer.review == self

      #iterating through Review class through the customer
      #add the total review the customer has made
      #returns the matched customer with review to that particular customer
    end.sum
      
  end

end
