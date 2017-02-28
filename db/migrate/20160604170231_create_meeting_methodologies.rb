class CreateMeetingMethodologies < ActiveRecord::Migration
  def change
    create_table :meeting_methodologies do |t|
      t.belongs_to :meeting, index: true, foreign_key: true
      t.belongs_to :methodology, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
