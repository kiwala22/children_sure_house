class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  scope :by_date, -> { order('created_at DESC') }
end
