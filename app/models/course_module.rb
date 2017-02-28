class CourseModule < ActiveRecord::Base
  belongs_to :course

  def name_with_course
    return "#{self.course.description} - #{self.description}"
  end

end
