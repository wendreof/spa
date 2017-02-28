class Resource < ActiveRecord::Base

	validates :description, presence: true
	
end
