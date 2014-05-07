class Battery < ActiveRecord::Base
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  validates :code, :price, presence: true
  has_and_belongs_to_many :models
  has_many :comments, dependent: :destroy
end
