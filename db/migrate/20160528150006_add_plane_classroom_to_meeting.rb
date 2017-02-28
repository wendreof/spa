class AddPlaneClassroomToMeeting < ActiveRecord::Migration
  def change
    add_reference :meetings, :plane_classroom, index: true, foreign_key: true
  end
end
