class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.integer :order_id, null: false
      t.integer :item_id, null: false
      t.integer :add_tax_price, null: false
      t.integer :quantity, null: false
      t.integer :making_status, null: false, default: 0

      t.timestamps
    end
  end
end
