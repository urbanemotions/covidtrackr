class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :citylocation
      t.references :user, null: false, foreign_key: true
      t.references :illness, null: false, foreign_key: true

      t.timestamps
    end
  end
end
