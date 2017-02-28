class CreateActivitySugestions < ActiveRecord::Migration
  def change
    create_table :activity_sugestions do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
