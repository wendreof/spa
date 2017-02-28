class ChangeLongDescriptionTypeInMethodologies < ActiveRecord::Migration
  def change
    change_column :methodologies, :long_description, :text
  end
end
