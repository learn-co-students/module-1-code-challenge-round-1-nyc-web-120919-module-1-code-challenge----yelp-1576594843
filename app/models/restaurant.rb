class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_ratings
    Review.all.select do |rating|
      rating.restaurant == self
    end
    #helper method to find avg rating
  end

  # def average_star_rating
  # all ratings and divide by number of ratings
  # end

end
