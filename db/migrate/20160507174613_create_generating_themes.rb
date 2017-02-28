class CreateGeneratingThemes < ActiveRecord::Migration
  def change
    create_table :generating_themes do |t|
      t.string :description
      t.string :long_description

      t.timestamps null: false
    end
  end
end
