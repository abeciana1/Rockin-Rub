require 'pry'

class Promoter

    @@all = []

    def initialize(name, age, wallet=0)
        @name = name
        @age = age
        @wallet = wallet
        @all << self
    end

    def self.all
        @@all
    end
    
end