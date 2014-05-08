class Cart < ActiveRecord::Base
  belongs_to :user
  belongs_to :purchase
  has_and_belongs_to_many :batteries
end
