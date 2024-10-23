class CreateFoods < ActiveRecord::Migration[7.2]
  def change
    create_table :foods do |t|
      t.references :shops, null: false, foreign_key: true
      t.string :name
      t.integer :price
      t.string :type

      t.timestamps
    end
  end
end
