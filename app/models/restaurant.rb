class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def review #test - array= Review.all.select{|review| review.restaurant == restaurant3}
    Review.all.select{|review| review.restaurant == self} ## we are filtering through the data and returning an array with the specific restaurant 
  end #this returns to us an array of reviews for a specific restaurant
  def customers ##test with array3 = array1.map{|review| review.customer}.uniq in pry
    review.map{|review| review.customer}.uniq #we transform the data to return only the customer names & we do .uniq to remove dupes
  end ##tested with restaurant1.customers

  def average_star_rating
    avg = 0
    array = Review.all.select{|review| review.restaurant == self}
      ##not enough time, 
      ##basically, first we find the restaurant we want to check the rating for 
      ##then we iterate through review.rating and add it up to total sum 
      ## then we divide by the array.count
end
