class AttitudinalSkill < ActiveRecord::Base

	has_many :meeting_attitudinal_skills
	has_many :meetings, through: :meeting_attitudinal_skills
	has_many :evidences

	validates :tipo, presence: true
	validates :Description, presence: true

end
