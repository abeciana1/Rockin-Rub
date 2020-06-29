require 'pry'
require_relative './promoter.rb'
require_relative './lineup.rb'
require_relative './concert.rb'

alex = Promoter.new("Alex", 25, 100)
alex.book_lineup(["bodgea", "public practice"])


rock = ["beatles", "rolling stones"]
#create new lineup
# puts lineup1 = Lineup.new(rock, "Alex")

# #new promoter
# puts alex = Promoter.new("Alex", 25, 100)

# #promoter creates new lineup with
# puts alex.book_lineup(["bodgea", "public practice"])

# # return all lineups
# puts Lineup.all

# new concert
puts party = Concert.new("Alphaville", "Friday", 100, 10, "Alex")

# alex.book_concert("Alphaville", "Friday", 5, 10)

# alex.book_concert("Alphaville", "Friday", 5, 10)


binding.pry