class Batteries_model < ActiveRecord::Base
  belongs_to :battery
  belongs_to :model
end
