class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.integer :customer_id, null: false
      t.string :postcode, null: false
      t.string :address, null: false
      t.string :receiver, null: false

      t.timestamps
    end
  end
end
