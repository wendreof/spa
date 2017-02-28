class Course < ActiveRecord::Base
	validates :description, presence: true
	has_many :course_modules
	accepts_nested_attributes_for :course_modules, reject_if: :all_blank, allow_destroy: true
end
