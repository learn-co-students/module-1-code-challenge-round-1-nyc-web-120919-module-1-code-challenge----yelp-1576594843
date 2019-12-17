require_relative "review"

class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  # Used uniq without parameter because same reference
  def customers
    self.reviews.map{|review| review.customer}.uniq
  end

  # Converted length to float for float result for more accuarte rating
  def average_star_rating
    self.reviews.reduce(0){|sum, review| sum + review.rating} / self.reviews.length.to_f
  end
end
