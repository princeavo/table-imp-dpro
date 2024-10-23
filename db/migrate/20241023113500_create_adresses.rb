class CreateAdresses < ActiveRecord::Migration[7.2]
  def change
    create_table :adresses do |t|
      t.string :line_1
      t.string :line_2
      t.string :line_3
      t.string :city
      t.string :prefecture
      t.string :postalcode
      t.integer :adressable_id

      t.timestamps
    end
  end
end
