require 'minitest/autorun'
require 'minitest/spec'

require 'before' if ENV["BEFORE"]
require 'after' unless ENV["BEFORE"]

describe SquareRootCalculator do
  it "calculates a square root" do
    SquareRootCalculator.calculate(9).must_equal 3
  end

  if ENV["BEFORE"]
    it "doesn't calculate a negative number's square root" do
      SquareRootCalculator.calculate(-9).must_be_nil
    end
  else # AFTER
    it "doesn't calculate a negative number's square root" do
      proc { SquareRootCalculator.calculate(-9) }.must_raise ArgumentError
    end
  end
end
