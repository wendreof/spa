class ActivitySugestion < ActiveRecord::Base
	validates :description, presence: true
end
