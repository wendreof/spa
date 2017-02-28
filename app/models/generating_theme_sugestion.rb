class GeneratingThemeSugestion < ActiveRecord::Base
	validates :description, presence: true
	validates :long_description, presence: true
end
