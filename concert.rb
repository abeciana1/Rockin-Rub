require 'pry'

class Concert
    attr_reader :venue_name, :promoter, :lineup
    attr_accessor :attendees, :price, :day

    @@all = []

    def initialize(venue_name, day, est_attendees=0, price=0, promoter, lineup)
        @venue_name = venue_name
        @day = day
        @est_attendees = est_attendees
        @price = price
        @promoter = promoter
        @lineup = lineup
        @@all << self
    end

    def ticket_sales(attendee_count)
        @est_attendees = attendee_count if attendee_count > @est_attendees
        total = @attendees * @price
        payout = total - (total * 10/100)
    end

    def promoter
        Promoter.all.map do  |promoter|
            promoter.name == @promoter
            #binding.pry
        end
    end

    def pay_promoter
        promoter.wallet += self.ticket_sales
        #binding.pry
    end

    def self.all
        @@all
    end
    
end