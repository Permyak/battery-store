class AddPurchaseToCarts < ActiveRecord::Migration
  def change
    add_reference :carts, :purchase, index: true
  end
end
