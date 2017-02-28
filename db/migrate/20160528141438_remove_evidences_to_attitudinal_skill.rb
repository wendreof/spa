class RemoveEvidencesToAttitudinalSkill < ActiveRecord::Migration
  def change
  	remove_column :attitudinal_skills, :evidence_one
  	remove_column :attitudinal_skills, :evidence_two
  	remove_column :attitudinal_skills, :evidence_three
  end
end
