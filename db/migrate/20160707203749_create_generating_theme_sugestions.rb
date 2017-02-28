class CreateGeneratingThemeSugestions < ActiveRecord::Migration
  def change
    create_table :generating_theme_sugestions do |t|
      t.string :description
      t.string :long_description

      t.timestamps null: false
    end
  end
end
