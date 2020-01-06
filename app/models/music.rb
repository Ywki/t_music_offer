class Music < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre

  belongs_to :group

  mount_uploader :file, AudioFileUploader
  mount_uploader :image, ImageUploader
end