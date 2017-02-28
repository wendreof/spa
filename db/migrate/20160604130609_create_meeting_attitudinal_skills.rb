class CreateMeetingAttitudinalSkills < ActiveRecord::Migration
  def change
    create_table :meeting_attitudinal_skills do |t|
      t.belongs_to :meeting, index: true, foreign_key: true
      t.belongs_to :attitudinal_skill, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
