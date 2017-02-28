class AddTheacherIdToGeneratingTheme < ActiveRecord::Migration
  def change
    add_reference :generating_themes, :teacher, index: true, foreign_key: true
  end
end
