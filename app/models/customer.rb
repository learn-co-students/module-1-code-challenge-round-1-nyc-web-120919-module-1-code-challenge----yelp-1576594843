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

  def reviews
    Review.all.select{|review| review.customer == self}
  end

  def restaurants
    reviews.collect {|review| review.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    if Review.validate_rating_num(rating) 
      return Review.new(self, restaurant, rating)
    else 
      return "Rating should be a number more than zero."
    end
  end

  def num_reviews 
    reviews.size
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    @@all.find { |customer| customer.full_name == full_name}
  end

  def self.find_all_by_given_name(name)
    @@all.select { |customer| customer.given_name == name}
  end

end
