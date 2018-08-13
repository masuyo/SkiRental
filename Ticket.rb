module SkiRental2
  class Ticket

    attr_accessor :id

    def initialize(id)
      @id = id
    end

    def ==(other)
      self.id = other.id
    end
    
  end
end