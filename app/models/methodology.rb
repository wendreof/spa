class Methodology < ActiveRecord::Base
	validates :description, presence: true
	validates :long_description, presence: true
end
