class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :commercial_name
      t.string :generic_name
      t.integer :laboratory_id
      t.integer :presentation_id
      t.string :concentration

      t.timestamps
    end
  end
end
