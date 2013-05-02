class Ticket
  attr_reader :price

  def initialize
    @price = 2.0
  end

end

class SeniorTicket < Ticket
  def price
    @price * 0.75
  end
end

class JuniorTicket < Ticket
  def price
    @price * 0.5
  end
end
