class CreateTeacherActivities < ActiveRecord::Migration
  def change
    create_table :teacher_activities do |t|
      t.string :description
      t.belongs_to :meeting, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
