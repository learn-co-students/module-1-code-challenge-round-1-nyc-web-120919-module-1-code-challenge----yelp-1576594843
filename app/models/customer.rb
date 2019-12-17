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

  def reviews
    Review.all.select do |review|
      review.customer == self 
    end 
  end 

  def restaurants
    array = []
    reviews.map do |review|
      array << review.restaurant
    end 
    array.uniq
  end 

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end 

  def num_reviews
    reviews.length
  end 

  def self.find_by_name(name)
    @@all.find do |customer|
      customer.full_name == name
    end 
  end

  def self.find_all_by_given_name(name)
    @@all.select do |customer|
      customer.given_name == name
    end 
  end 
end
