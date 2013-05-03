class Employee
  def initialize(type: :regular)
    @type = type
  end

  def base_salary
    500.0
  end

  def salary
    base_salary + bonus
  end

  def self.build(type: :employee)
    const_get(type.capitalize).new
  end

  def bonus
    0
  end
end

class Manager < Employee
  def bonus
    800
  end
end

class Boss < Employee
  def bonus
    1500
  end
end
