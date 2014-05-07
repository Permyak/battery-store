class Model < ActiveRecord::Base
  belongs_to :company
  has_and_belongs_to_many :batteries
  validates :name, :company, presence: true
end
