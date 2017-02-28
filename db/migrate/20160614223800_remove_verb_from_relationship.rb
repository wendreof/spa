class RemoveVerbFromRelationship < ActiveRecord::Migration
  def change
    remove_reference :relationships, :verb, index: true, foreign_key: true
  end
end
