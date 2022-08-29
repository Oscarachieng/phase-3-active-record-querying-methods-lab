class Show < ActiveRecord::Base 
    def self.highest_rating 
        Show.maximum("rating")
    end

    def self.most_popular_show
        Show.highest_rating
    end

    def self.lowest_rating
        Show.minimun("rating")
    end

    def self.least_popular_show
        Show.lowest_rating
    end

    def self.popular_shows (rate)
        Show.where("rating > #{rate}")
    end

    def self.ratings_sum
        Show.sum("rating")
    end

    def self.shows_by_alphabetical_order 
        Show.order(name: :ASC)
    end
end