class CreateStrategies < ActiveRecord::Migration
  def change
    create_table :strategies do |t|
      t.string :description
      t.belongs_to :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
