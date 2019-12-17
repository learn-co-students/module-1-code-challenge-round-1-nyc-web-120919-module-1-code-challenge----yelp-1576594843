class Review
    attr_reader :customer, :restaurant, :rating

    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        if Review.validate_rating_num(rating) 
            @rating = rating
        else 
            return "Rating should be a number more than zero."
        end

        @@all << self
    end

    def self.all
        @@all
    end

    def self.validate_rating_num(rating)
        rating.class == Integer &&  rating > 0
    end
end