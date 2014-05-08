class Batteries_cart < ActiveRecord::Base
  belongs_to :battery
  belongs_to :cart
end
