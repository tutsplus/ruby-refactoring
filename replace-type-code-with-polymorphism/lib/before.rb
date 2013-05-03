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
    new type: type
  end

  private

  def bonus
    value = case @type
      when :regular then 0
      when :boss    then 1500.0
      when :manager then 800.0
    end
  end

end
