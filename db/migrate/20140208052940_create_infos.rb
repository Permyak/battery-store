class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.integer :steamid

      t.timestamps
    end
  end
end
