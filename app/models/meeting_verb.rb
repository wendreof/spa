class MeetingVerb < ActiveRecord::Base
  belongs_to :meeting
  belongs_to :verb
end
