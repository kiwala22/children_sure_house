class Project < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  has_one_attached :image
end
