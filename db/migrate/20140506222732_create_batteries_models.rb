class CreateBatteriesModels < ActiveRecord::Migration
  def change
    create_table :batteries_models,  id: false do |t|
      t.belongs_to :battery
      t.belongs_to :model
    end
  end
end
