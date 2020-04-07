class User < ApplicationRecord
    has_secure_password

    validates :username, uniqueness: {case_sensitive: false}
    validates :username, presence: true

    has_many :userposts
    has_many :posts, through: :userposts
end
