class CreateStudyUnits < ActiveRecord::Migration
  def change
    create_table :study_units do |t|
      t.string :description
      t.belongs_to :course_module, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
