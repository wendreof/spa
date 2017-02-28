class PlaneClassroom < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :course
  belongs_to :course_module
  belongs_to :study_unit
  has_many :meetings
  
  validates :workload, presence: true, numericality: true
  validates :teacher, presence: true
  validates :semester, presence: true
  validates :course, presence: true
  validates :course_module, presence: true
  validates :study_unit, presence: true
  validates :menu, presence: true
end
