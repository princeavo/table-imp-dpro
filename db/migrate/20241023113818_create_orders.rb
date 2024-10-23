class CreateOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :orders do |t|
      t.references :customers, null: false, foreign_key: true
      t.references :adresses, null: false, foreign_key: true

      t.timestamps
    end
  end
end
