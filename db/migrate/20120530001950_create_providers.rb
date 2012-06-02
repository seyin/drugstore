class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :industry
      t.text :description
      t.string :address
      t.string :fono

      t.timestamps
    end
  end
end
