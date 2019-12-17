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
    total_all_ratings = 0.0
    reviews.each do |review|
      total_all_ratings += review.rating
    end
    total_all_ratings / reviews.length
  end

end
