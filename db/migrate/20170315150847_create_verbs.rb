class CreateVerbs < ActiveRecord::Migration[5.0]
  def change
    create_table :verbs do |t|
      t.string :infinitive,  null: false
      t.index :infinitive, unique: true
      t.string :tense_id,  null: false
      t.string :ich,  null: false
      t.string :du,  null: false
      t.string :er
      t.string :wir,  null: false
      t.string :ihr,  null: false
      t.string :sie,  null: false

      t.timestamps
    end
  end
end
