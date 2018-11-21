class Photo < ApplicationRecord

  belongs_to :user

  validates :content, presence:true
  validates :content_cache, presence:true

  mount_uploader :content, ContentUploader
end
