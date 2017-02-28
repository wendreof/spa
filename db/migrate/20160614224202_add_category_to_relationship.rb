class AddCategoryToRelationship < ActiveRecord::Migration
  def change
    add_reference :relationships, :category, index: true, foreign_key: true
  end
end
