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
    rest_reviews = reviews.map do |review|
      review.customer 
    end
    rest_reviews.uniq 
  end

  def average_star_rating
    sum = 0.0 
    rating_array = reviews.map do |review|
      review.rating 
    end
    rating_array.each do |rating|  
      sum += rating   
    end
    avg_rating = (sum / rating_array.length)
  end
end
