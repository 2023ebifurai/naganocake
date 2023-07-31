class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id, null: false
      t.integer :payment_method, null: false, default: 0
      t.string :postcode, null: false
      t.string :address, null: false
      t.string :receiver, null: false
      t.integer :postage, null: false
      t.integer :total_amount, null: false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
