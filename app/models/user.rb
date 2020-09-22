class User < ApplicationRecord
    has_secure_password
    
    # has_many :posts, dependent: :destroy, foreign_key: :post_user_id
    has_many :posts, dependent: :destroy
end
