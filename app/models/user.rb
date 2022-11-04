class User < ApplicationRecord
    has_many :programs
    has_many :progress_photos
    has_many :weight_histories
    has_many :exercises, through: :programs
end
