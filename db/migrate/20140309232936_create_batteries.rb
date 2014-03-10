class CreateBatteries < ActiveRecord::Migration
  def change
    create_table :batteries do |t|
      t.string :code
      t.string :chem_composition
      t.string :color
      t.float :voltage
      t.string :capacity
      t.string :description
      t.integer :element_count
      t.float :netto
      t.float :brutto
      t.integer :price

      t.timestamps
    end
  end
end
