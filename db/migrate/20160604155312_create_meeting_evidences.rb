class CreateMeetingEvidences < ActiveRecord::Migration
  def change
    create_table :meeting_evidences do |t|
      t.belongs_to :meeting, index: true, foreign_key: true
      t.belongs_to :evidence, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
