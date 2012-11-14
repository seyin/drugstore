class CreatePurchaseItems < ActiveRecord::Migration
  def self.up
    create_table :purchase_items do |t|
      t.integer :medicine_id
      t.integer :purchase_id
      t.string :container
      t.integer :quantity
      t.integer :quantity_unit_container
      t.decimal :price
      t.date :due_date
      t.timestamps
    end
  end

  def self.down
    drop_table :purchase_items
  end
end
