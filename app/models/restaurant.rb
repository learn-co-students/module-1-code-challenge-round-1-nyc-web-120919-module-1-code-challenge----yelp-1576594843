class Restaurant

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer}.uniq
  end

  def ratings
    self.reviews.map {|review| review.rating}
  end

  def average_star_rating
    sum_of_rating = self.ratings.sum
    length_of_rating = self.ratings.length
    sum_of_rating / length_of_rating
  end

  def self.all
    @@all
  end

end
