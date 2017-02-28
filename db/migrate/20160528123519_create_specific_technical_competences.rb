class CreateSpecificTechnicalCompetences < ActiveRecord::Migration
  def change
    create_table :specific_technical_competences do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
