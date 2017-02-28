class CreateSpecificSkills < ActiveRecord::Migration
  def change
    create_table :specific_skills do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
