module Assertions
  def assert &block
    raise ArgumentError unless block.call
  end
end

class SquareRootCalculator
  extend Assertions

  def self.calculate number
    assert { number > 0 }
    Math.sqrt number
  end
end
