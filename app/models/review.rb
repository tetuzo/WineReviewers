class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  mount_uploader :image, ImageUploader
  validates :name, presence: true
  belongs_to :user
  def self.search(search)
    return Review.all unless search
    Review.where(['name LIKE ?', "%#{search}%"])
  end
end
