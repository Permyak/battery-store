class CreateBatteriesCarts < ActiveRecord::Migration
  def change
    create_table :batteries_carts do |t|
	t.belongs_to :battery
    t.belongs_to :cart
    end
  end
end
