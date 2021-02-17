class CreateIllnesses < ActiveRecord::Migration[6.1]
  def change
    create_table :illnesses do |t|
      t.boolean :covid

      t.timestamps
    end
  end
end
