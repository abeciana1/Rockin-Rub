require 'pry'

class Lineup
    attr_reader :arrs

    @@all = []

    def initialize(arr, promoter)
        @arr = arr
        @wallet = 0
        @promoter = promoter
        @@all << self
    end

    def self.all
        @@all
    end
    
end