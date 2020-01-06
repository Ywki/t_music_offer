class Group < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :area
  belongs_to_active_hash :year

  has_many :user_groups
  has_many :users, through: :user_groups
  has_many :musics
  
  mount_uploader :image, ImageUploader
end
