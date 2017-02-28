class CreateMethodologies < ActiveRecord::Migration
  def change
    create_table :methodologies do |t|
      t.string :description
      t.string :long_description

      t.timestamps null: false
    end
  end
end
