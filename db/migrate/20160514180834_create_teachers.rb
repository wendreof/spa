class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :registration
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
