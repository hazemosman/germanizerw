class CreatePronouns < ActiveRecord::Migration[5.0]
  def change
    create_table :pronouns do |t|
      t.string :description,  null: false
      t.string :nominative,  null: false
      t.string :accusative,  null: false
      t.string :dative,  null: false

      t.timestamps
    end
  end
end
