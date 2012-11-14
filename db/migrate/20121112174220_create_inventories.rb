class CreateInventories < ActiveRecord::Migration
  def self.up
    create_table :inventories do |t|
      t.integer :medicine_id
      t.integer :quantity
      t.decimal :sale_price
      t.timestamps
    end
  end

  def self.down
    drop_table :inventories
  end
end
