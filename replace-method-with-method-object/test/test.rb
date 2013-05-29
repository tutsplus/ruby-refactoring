require 'minitest/autorun'
require 'minitest/spec'

require 'before' if ENV["BEFORE"]
require 'after' unless ENV["BEFORE"]

describe TaxSimulator do
  it "simulates tax returns" do
    TaxSimulator.new("Jose Mota").simulate_return(
      income: 10000,
      expenses: 300,
      type: :independent_worker
    ).must_equal 325.0
  end
end
