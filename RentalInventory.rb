module SkiRental2
  require 'date'
  class RentalInventory

    NUMBER_OF_RENTAL_PLACES = 50
    attr_accessor :rentals

    def initialize
      @rentals = Array.new(NUMBER_OF_RENTAL_PLACES)
      add_rental(Rental.new(1,DateTime.now,nil))
    end

    def add_rental(rental)
      self.rentals.push(rental)
    end

    def remove_rental(rental)
      self.rentals.delete(rental)
    end

    def find_rental(rental)
      tar = self.rentals.find {|target| rental.equal?(target)}
      return tar
    end
  end
end