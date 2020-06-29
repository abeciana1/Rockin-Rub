require 'pry'

class Promoter
    attr_reader :name, :age
    attr_accessor :wallet, :lineup_list, :concert_list

    @@all = []

    def initialize(name, age, wallet=0)
        @name = name
        @age = age
        @wallet = wallet
        @concert_list = []
        # @lineup_list = []
        @@all << self
    end

    def book_lineup(arr_of_names)
        Lineup.new(arr_of_names, self)
    end

    def book_concert(venue_name, day, est_attendees, price)
        Concert.new(venue_name, day, est_attendees, price, self)
    end

    def concerts
        Concert.all.select do |concert|
            concert_list << concert
        end
    end

    def lineups
        Lineup.all.map do |lineup|
            lineup.promoters == self 
        end
    end

    def self.all
        @@all
    end
    
end