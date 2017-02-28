class MeetingEvidence < ActiveRecord::Base
  belongs_to :meeting
  belongs_to :evidence
end
