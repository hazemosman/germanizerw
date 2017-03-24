class CreateTenses < ActiveRecord::Migration[5.0]
  def change
    create_table :tenses do |t|
      t.string :name,  null: false
      t.string :description,  null: false

      t.timestamps
    end
  end
end
