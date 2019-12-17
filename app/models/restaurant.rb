class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    review_list = self.reviews
    customer_list = review_list.map do |review|
      review.customer
    end
    customer_list.uniq
  end

  def average_star_rating
    review_list = self.reviews
    ratings = 0
    review_list.map do |review|
      ratings += review.rating
    end
    ratings_float = ratings.to_f

    ratings_float / review_list.length
  end

end
