class ChangeLongDescriptionTypeInGeneratingThemes < ActiveRecord::Migration
  def change
    change_column :generating_themes, :long_description, :text
  end
end
