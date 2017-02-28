class AddTeacherRefToActivity < ActiveRecord::Migration
  def change
    add_reference :activities, :teacher, index: true, foreign_key: true
  end
end
