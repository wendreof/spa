class Verb < ActiveRecord::Base
  
  belongs_to :category

  validates :description, presence: true
  validates :category_id, presence: true

end
