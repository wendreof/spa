class CreateCourseModuleStudyUnits < ActiveRecord::Migration
  def change
    create_table :course_module_study_units do |t|
      t.belongs_to :course_module, index: true, foreign_key: true
      t.belongs_to :study_unit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
