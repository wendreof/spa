class CreateMeetingStrategies < ActiveRecord::Migration
  def change
    create_table :meeting_strategies do |t|
      t.belongs_to :meeting, index: true, foreign_key: true
      t.belongs_to :strategy, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
