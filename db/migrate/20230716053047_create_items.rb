class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.integer :genre_id
      t.string :name
      t.text :introduce
      t.integer :price
      t.boolean :is_active, null: false, default: true
      t.timestamps
    end
  end
end
