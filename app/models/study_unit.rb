class StudyUnit < ActiveRecord::Base
  belongs_to :course_module

  has_many :course_module_study_units, dependent: :destroy
  has_many :course_modules, through: :course_module_study_units
  
  validates :description, presence: true


end
