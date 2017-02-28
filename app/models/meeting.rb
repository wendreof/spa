class Meeting < ActiveRecord::Base
  belongs_to :generating_theme
  belongs_to :specific_skill
  belongs_to :category
  belongs_to :plane_classroom

  has_many :meeting_attitudinal_skills, dependent: :destroy
  has_many :attitudinal_skills, through: :meeting_attitudinal_skills
  accepts_nested_attributes_for :meeting_attitudinal_skills

  has_many :meeting_evidences, dependent: :destroy
  has_many :evidences, through: :meeting_evidences
  accepts_nested_attributes_for :meeting_evidences

  has_many :meeting_verbs, dependent: :destroy
  has_many :verbs, through: :meeting_verbs
  accepts_nested_attributes_for :meeting_verbs

  has_many :meeting_methodologies, dependent: :destroy
  has_many :methodologies, through: :meeting_methodologies
  accepts_nested_attributes_for :meeting_methodologies

  has_many :meeting_activities, dependent: :destroy
  has_many :activities, through: :meeting_activities
  accepts_nested_attributes_for :meeting_activities

  has_many :meeting_strategies, dependent: :destroy
  has_many :strategies, through: :meeting_strategies
  accepts_nested_attributes_for :meeting_strategies

  has_many :meeting_resources, dependent: :destroy
  has_many :resources, through: :meeting_resources
  accepts_nested_attributes_for :meeting_resources

  has_many :teacher_meetings
  accepts_nested_attributes_for :teacher_meetings

  validates :name, presence: true
  validates :generating_theme_id, presence: true
  validates :workload, presence: true, numericality: true
  validates :specific_skill_id, presence: true
  validates	:category_id, presence: true
  validates :know_more, presence: true

end
