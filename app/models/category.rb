class Category < ActiveRecord::Base
	validates :desctipion, presence: true
	validates :long_description, presence: true
	has_many :relationship
end

