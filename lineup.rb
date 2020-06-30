require 'pry'

class Lineup
    attr_reader :arr
    attr_accessor :wallet, :promoter

    @@all = []

    def initialize(arr, promoter, concert=nil)
        @arr = arr
        @wallet = 0
        @promoter = promoter
        #binding.pry
        @concert = []
        @@all << self
    end

    def concerts
        Concert.all.select do |concert_instance|
            @concert << concert_instance
            # binding.pry
        end
    end

    def promoter
        self.concerts.select do |concert_instance|
            if concert_instance.promoter == @promoter
                return @promoter
            end
            # binding.pry
        end
    end

    def lineup_pay
        self.concerts.select do |concert_instance|
           @wallet += concert_instance.payout
            binding.pry
        end
    end

    def self.all
        @@all
    end
    
end