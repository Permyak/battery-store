class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name
      t.belongs_to :company, index: true

      t.timestamps
    end
  end
end
