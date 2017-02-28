class Relationship < ActiveRecord::Base
  belongs_to :attitudinal_skill
  belongs_to :specific_skill
  belongs_to :category
  belongs_to :activity

  validates :attitudinal_skill_id, presence: true
  validates :specific_skill_id, presence: true
  validates :category_id, presence: true
  validates :activity_id, presence: true

end