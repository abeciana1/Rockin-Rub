require 'pry'

class Concert

    @@all = []

    def initialize(venue_name, venue_wallet, day, attendees)
        @venue_name = venue_name
        @venue_wallet = venue_wallet
        @day = day
        @attendees = attendees
        @@all << self
    end

    def self.all
        @@all
    end
    
end