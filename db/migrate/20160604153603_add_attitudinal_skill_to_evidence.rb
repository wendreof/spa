class AddAttitudinalSkillToEvidence < ActiveRecord::Migration
  def change
    add_reference :evidences, :attitudinal_skill, index: true, foreign_key: true
  end
end
