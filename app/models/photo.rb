class Photo < ApplicationRecord

  belongs_to :user

  validates :content, presence:true

  mount_uploader :content, ContentUploader
end
