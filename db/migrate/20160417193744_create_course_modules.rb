class CreateCourseModules < ActiveRecord::Migration
  def change
    create_table :course_modules do |t|
      t.string :description
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
