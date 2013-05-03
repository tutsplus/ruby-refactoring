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

  def self.build(type: :regular)
    instance = new
    instance.extend const_get(type.capitalize)
  end

end

module Regular
  def bonus
    0
  end
end

module Manager
  def bonus
    800
  end
end

module Boss
  def bonus
    1500
  end
end
