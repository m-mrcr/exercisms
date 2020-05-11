class School
  def initialize
    @enrollment = []
  end

  def add (name, grade)
    group = get_grade(grade)
    if group 
      group[:students].sort! << name
    else
      @enrollment << {grade: grade, students: [name]}
    end
  end

  def students (grade)
    group = get_grade(grade)
    group ? group[:students] : []
  end

  def students_by_grade
    @enrollment.sort_by {|g| g[:grade]}
  end

  private

  def get_grade grade
    @enrollment.detect {|g| g[:grade] == grade}
  end
end