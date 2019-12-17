class Customer

  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    self.reviews.map {|review| review.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    self.reviews.count
  end

  def self.find_by_name(name_string)
    name_array = name_string.split(' ')
    @given_name == name_array[0] && @family_name == name_array[1]
    Customer.all.find do |customer|
      customer.given_name
    end
    # if match = name_array[0] && name_array[1]

    # self.all.find do |customer|
    #   customer.given_name == name_string.split('')
    # end
  end
  # def self.find_by_name(full_name_string)
  #   
  #self.all.find do |customer|
  #     (customer.given_name.to_s && customer.family_name.to_s) == full_name_string
  #   end
  # end
  #Customer.find_by_name("eunice kim") ==> eunice

  def self.find_by_given_name(name_string)
    customer_given_name = self.all.select {|customer| customer.given_name == name_string}
    customer_given_name.map(&:given_name)
  end

  def self.all
    @@all
  end

end
