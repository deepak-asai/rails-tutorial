class Micropost < ApplicationRecord
    belongs_to :user
    validates :content, length: {maximum: 2000}
    validates :user_id, presence: true
    mount_uploader :picture, PictureUploader
    default_scope {(order(created_at: :desc))}
end
