class Company < ActiveRecord::Base
  has_many :models, dependent: :destroy
  validates :name, presence: true
end
