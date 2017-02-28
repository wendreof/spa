class GeneratingTheme < ActiveRecord::Base
	validates :description, presence: true
	validates :long_description, presence: false
	belongs_to :generating_theme_sugestion
end
