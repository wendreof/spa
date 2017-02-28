class AddAdditionalBibliographyToPlaneClassroom < ActiveRecord::Migration
  def change
    add_column :plane_classrooms, :additional_bibliography, :text
  end
end
