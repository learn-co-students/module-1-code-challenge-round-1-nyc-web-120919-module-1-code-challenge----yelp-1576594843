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
    matching_reviews = self.reviews
    restaurant_full_list = matching_reviews.map do |review|
      review.restaurant
    end
    restaurant_full_list.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    matching_reviews = self.reviews
    matching_reviews.count
  end

  def self.find_by_name(name)
    @@all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_by_given_name(name)
    @@all.select do |customer|
      customer.given_name == name
    end
  end
end
