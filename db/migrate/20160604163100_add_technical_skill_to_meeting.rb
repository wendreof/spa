class AddTechnicalSkillToMeeting < ActiveRecord::Migration
  def change
    	add_column :meetings, :technical_skill, :text
  end
end
