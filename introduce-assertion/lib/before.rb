class SquareRootCalculator
  class << self
    def calculate number
      if number > 0
        Math.sqrt number
      end
    end
  end
end
