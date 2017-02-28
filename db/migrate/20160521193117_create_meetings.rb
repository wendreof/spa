class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :name
      t.references :generating_theme, index: true, foreign_key: true
      t.integer :workload
      t.references :specific_skill, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.text :know_more

      t.timestamps null: false
    end
  end
end
