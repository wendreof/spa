class MeetingActivity < ActiveRecord::Base
  belongs_to :meeting
  belongs_to :activity
end
