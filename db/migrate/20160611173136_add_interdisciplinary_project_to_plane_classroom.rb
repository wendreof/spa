class AddInterdisciplinaryProjectToPlaneClassroom < ActiveRecord::Migration
  def change
    	add_column :plane_classrooms, :interdisciplinary_project, :text
  end
end
