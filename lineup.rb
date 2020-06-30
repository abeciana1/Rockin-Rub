require 'pry'

class Lineup
    attr_reader :arr
    attr_accessor :wallet, :promoter

    @@all = []

    def initialize(arr, promoter, concert=nil)
        @arr = arr
        @wallet = 0
        @promoter = promoter
        @concert = []
        @@all << self
    end

    def concerts
        Concert.all.select do |concert_instance|
            @concert << concert_instance
        end
    end

    def lineup_pay
        Concert.all.select do |concert_instance|
            (concert_instance.payout) / self.arr.length
            binding.pry
        end
    end

    def self.all
        @@all
    end
    
end