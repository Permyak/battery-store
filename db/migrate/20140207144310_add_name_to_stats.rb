class AddNameToStats < ActiveRecord::Migration
  def change
    add_column :stats, :name, :string
  end
end
