require 'minitest/spec'
require 'minitest/autorun'

require 'before' if ENV["BEFORE"]
require 'after' unless ENV["BEFORE"]

describe Ticket do
  it "has a calculated price" do
    Ticket.new.price.must_equal 2.0
  end

  it "costs less if a senior" do
    SeniorTicket.new.price.must_equal 1.5
  end

  it "costs less if a junior" do
    JuniorTicket.new.price.must_equal 1.0
  end

end
