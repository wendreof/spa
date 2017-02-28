class AddEvidencesToAttitudinalSkill < ActiveRecord::Migration
  def change
  	add_column :attitudinal_skills, :evidence_one, :text
  	add_column :attitudinal_skills, :evidence_two, :text
  	add_column :attitudinal_skills, :evidence_three, :text
  end
end
