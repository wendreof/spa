class AddBasicBibliographyToPlaneClassroom < ActiveRecord::Migration
  def change
    add_column :plane_classrooms, :basic_bibliography, :text
  end
end
