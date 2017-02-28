class CreateMeetingResources < ActiveRecord::Migration
  def change
    create_table :meeting_resources do |t|
      t.belongs_to :meeting, index: true, foreign_key: true
      t.belongs_to :resource, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
