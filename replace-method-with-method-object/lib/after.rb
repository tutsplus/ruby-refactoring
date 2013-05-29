class TaxAlgorithm
  def initialize(income: nil, expenses: 0, type: :dependent_worker)
    @income = income
    @expenses = expenses
    @type = type

    @return_value = 0
    @number_of_people_under_roof = 1 
  end

  def compute
    process_type
    process_number_of_people
    process_income_expense_difference
    deduct_expenses
  end

  def process_type
    if @type == :dependent_worker
      @return_value += @income * 0.02
    else
      @return_value += @income * 0.04
    end
  end

  def process_number_of_people
    @return_value *= 1.10 if @number_of_people_under_roof > 2
  end

  def process_income_expense_difference
    @return_value += @expenses * 0.05 if @income - @expenses > @income * 0.05
  end

  def deduct_expenses
    @return_value -= @expenses * 0.30
  end
end

class TaxSimulator
  def initialize person
    @person = person
  end

  def simulate_return(income: nil, expenses: 0, type: :dependent_worker)
    TaxAlgorithm.new(income: income, expenses: expenses, type: type).compute
  end
end
