class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :attitudinal_skill_id
      t.integer :specific_skill_id
      t.integer :verb_id
      t.integer :activity_id

      t.references :attitudinal_skills, index: true, foreign_key: true
      t.references :specific_skills, index: true, foreign_key: true
      t.references :verbs, index: true, foreign_key: true
      t.references :activities, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
