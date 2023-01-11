class NewsFeed < ApplicationRecord
    has_one_attached :image
    validate :check_image_presence
end
