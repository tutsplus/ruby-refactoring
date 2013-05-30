class Student
  GRADES = {
    first: 10,
    second: 11,
    third: 12
  }

  def term_grade index
    GRADES[index]
  end
end
