class School
  def initialize
    @enrollment = Hash.new {|grade, students| grade[students] = []}
  end

  def add(name, grade)
    @enrollment[grade] << name
  end

  def students(grade)
    @enrollment[grade].sort
  end

  def students_by_grade
    @enrollment
      .sort
      .map {|grade, students| {grade: grade, students: students.sort}}
  end
end