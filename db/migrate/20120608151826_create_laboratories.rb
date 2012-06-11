class CreateLaboratories < ActiveRecord::Migration
  def change
    create_table :laboratories do |t|
      t.string :name
      t.text :desciption

      t.timestamps
    end
  end
end
