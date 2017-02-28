class Activity < ActiveRecord::Base
    
    has_many :relationships

	validates :description, presence: true
	
end
