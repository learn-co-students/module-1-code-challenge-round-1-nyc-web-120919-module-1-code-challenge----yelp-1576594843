class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end 

  def customers
    reviews.map {|review| review.customer}.uniq
  end 

  def average_star_rating
    total_stars = 0
    reviews.each {|review| total_stars += review.rating}
    total_stars / reviews.count
  end 

end
