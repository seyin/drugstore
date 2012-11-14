class CreateSaleItems < ActiveRecord::Migration
  def self.up
    create_table :sale_items do |t|
      t.integer :medicine_id
      t.integer :sale_id
      t.integer :quantity
      t.decimal :price
      t.timestamps
    end
  end

  def self.down
    drop_table :sale_items
  end
end
