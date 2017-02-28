class CourseModuleStudyUnit < ActiveRecord::Base
  belongs_to :course_module
  belongs_to :study_unit
end
