class MeetingResource < ActiveRecord::Base
  belongs_to :meeting
  belongs_to :resource
end
