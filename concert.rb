require 'pry'

class Concert
    attr_reader :venue_name, :promoter, :payout
    attr_accessor :est_attendees, :price, :day

    @@all = []

    def initialize(venue_name, day, est_attendees=nil, price=0, payout=0, promoter)
        @venue_name = venue_name
        @day = day
        @est_attendees = est_attendees
        @payout = payout
        @price = price
        @promoter = promoter
        @@all << self
    end

    def ticket_sales(attendee_count)
        if attendee_count > @est_attendees
            @est_attendees = attendee_count 
        end
        total = attendee_count * @price
        @payout = total - (total * 10/ 100)
    end

    def promoter_pay
        @promoter.wallet += @payout
        # binding.pry
    end

    def promoter
        Promoter.all.select do  |promoter_instance|
            promoter_instance == @promoter
            # binding.pry
        end
    end

    def self.all
        @@all
    end
    
end