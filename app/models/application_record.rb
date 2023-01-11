class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  scope :by_date, -> { order('created_at DESC') }

  def check_image_presence
    errors.add(:image, "image is not attached") unless image.attached?
  end
end
