module SkiRental2
  class Rental

    attr_accessor :ticket, :start_date, :number_of_rental_days

    def initialize(ticket, start_date, number_of_rental_days)
      @ticket = ticket
      @start_date = start_date
      @number_of_rental_days = number_of_rental_days
    end

    def ==(other)
      self.ticket = other.ticket
    end
  end
end