class User < ApplicationRecord
    has_many :programs
    has_many :progress_photos
    has_many :weight_histories
    has_many :exercises, through: :programs

    validates :username, uniqueness: true, presence: true
    validates :password, length: { in: 6..20 }

    has_secure_password
end
