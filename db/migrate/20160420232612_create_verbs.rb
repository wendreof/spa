class CreateVerbs < ActiveRecord::Migration
  def change
    create_table :verbs do |t|
      t.string :description
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
