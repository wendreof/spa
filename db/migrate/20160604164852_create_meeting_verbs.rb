class CreateMeetingVerbs < ActiveRecord::Migration
  def change
    create_table :meeting_verbs do |t|
      t.belongs_to :meeting, index: true, foreign_key: true
      t.belongs_to :verb, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
