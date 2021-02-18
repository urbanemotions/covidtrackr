class CreateSymptoms < ActiveRecord::Migration[6.1]
  def change
    create_table :symptoms do |t|
      t.string :name
      t.integer :user_id
      t.integer :illness_id
      t.timestamps
    end
  end
end
