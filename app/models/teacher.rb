class Teacher < ActiveRecord::Base
	validates :registration, presence: true
	validates :name, presence: true
	validates :email, presence: true
end
