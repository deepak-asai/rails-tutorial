class User < ApplicationRecord
    validates :name, presence:true, length: {maximum: 10}
    has_many :microposts
    has_secure_password
end
