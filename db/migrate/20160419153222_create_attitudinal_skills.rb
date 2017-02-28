class CreateAttitudinalSkills < ActiveRecord::Migration
  def change
    create_table :attitudinal_skills do |t|
      t.string :tipo
      t.string :Description

      t.timestamps null: false
    end
  end
end
