class TaxSimulator
  def initialize person
    @person = person
  end

  def simulate_return(income: nil, expenses: 0, type: :dependent_worker)
    return_value = 0
    number_of_people_under_roof = 1 

    if type == :dependent_worker
      return_value += income * 0.02
    else
      return_value += income * 0.04
    end

    if number_of_people_under_roof > 2
      return_value *= 1.10
    end

    if income - expenses > income * 0.05
      return_value += expenses * 0.05
    end

    return_value -= expenses * 0.30
  end
end
