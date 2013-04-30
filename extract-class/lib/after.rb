class Student

  attr_reader :terms

  def initialize
    @terms = [
      Term.new(:first),
      Term.new(:second),
      Term.new(:third)
    ]
  end

  def set_all_grades_to grade
    terms.each { |term| term.set_all_grades_to(grade) }
  end

  def first_term_grade
    term(:first).grade
  end

  def second_term_grade
    term(:second).grade
  end

  def third_term_grade
    term(:third).grade
  end

  def term reference
    terms.find { |term| term.name == reference }
  end
end

class Term

  attr_reader :name, :assiduity, :test, :behavior

  def initialize name
    @name      = name
    @assiduity = 0
    @test      = 0
    @behavior  = 0
  end

  def set_all_grades_to grade
    @assiduity = grade
    @test      = grade
    @behavior  = grade
  end

  def grade
    (assiduity + test + behavior) / 3
  end
end
