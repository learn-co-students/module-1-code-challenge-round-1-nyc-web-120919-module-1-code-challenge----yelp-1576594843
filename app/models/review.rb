class Review
    attr_accessor :rating
    attr_reader :customer, :restaurant

    @@all = []

    def initialize (customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating

        @@all << self 
    end 

    def self.all
        @@all
    end 

    def rating
        @rating 
    end 

    def customer
        @customer
    end

    def restaurant
        @restaurant
    end
end