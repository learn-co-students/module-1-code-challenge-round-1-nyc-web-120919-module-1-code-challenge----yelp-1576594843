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

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end 
  end 

  def customers
    array = []
    reviews.map do |review|
      array << review.customer 
    end 
    array.uniq
  end 

end
