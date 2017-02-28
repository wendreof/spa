class CreatePlaneClassrooms < ActiveRecord::Migration
  def change
    create_table :plane_classrooms do |t|
      t.references :teacher, index: true, foreign_key: true
      t.references :generating_theme, index: true, foreign_key: true
      t.integer :year
      t.string :semester
      t.references :course, index: true, foreign_key: true
      t.references :course_module, index: true, foreign_key: true
      t.references :study_unit, index: true, foreign_key: true
      t.integer :workload
      t.text :menu

      t.timestamps null: false
    end
  end
end
