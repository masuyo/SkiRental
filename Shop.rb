module SkiRental2
  require './RentalInventory'
  require './Rental'
  require './Ticket'
  class Shop

    attr_accessor :rental_inventory, :number_of_tickets_out

    def initialize
      @rental_inventory, @number_of_tickets_out = RentalInventory.new, 0
    end

    def start_rental(start_rental_date, number_of_rental_days)
      self.number_of_tickets_out += 1
      rental = Rental.new(self.number_of_tickets_out, start_rental_date, number_of_rental_days)
      self.rental_inventory.add_rental(rental)
    end

    def end_rental(ticket)
      rental = Rental.new(ticket, nil, nil)
      stored_rental = @rental_inventory.find_rental(rental)
      puts stored_rental.start_date.to_s
    end
  end

  shop = Shop.new
  shop.end_rental(1)
end
