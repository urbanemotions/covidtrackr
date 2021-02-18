class CreateTreatments < ActiveRecord::Migration[6.1]
  def change
    create_table :treatments do |t|
      t.string :name
      t.references :illness, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
