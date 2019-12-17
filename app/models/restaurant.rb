class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    reviews.collect {|review| review.customer}.uniq
  end

  def average_star_rating
    total = reviews.reduce(0.0){|memo, review| memo += review.rating}
    (total / reviews.size).round(2)
  end

end
