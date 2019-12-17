require_relative "review"

class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all.push(self)
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  # Helper method to avoid copy paste
  def reviews
    Review.all.select{|review| review.customer == self}
  end

  # Used uniq without parameters because same reference
  def restaurants
    self.reviews.map{|review| review.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    self.reviews.length
  end

  def self.find_by_name(name)
    @@all.find{|customer| customer.full_name == name}
  end

  def self.find_all_by_given_name(name)
    @@all.select{|customer| customer.full_name == name}
  end

  def self.all
    @@all
  end
end
