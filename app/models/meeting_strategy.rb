class MeetingStrategy < ActiveRecord::Base
  belongs_to :meeting
  belongs_to :strategy
end
