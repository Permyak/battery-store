class Purchase < ActiveRecord::Base
  belongs_to :user
  has_one :cart
end
