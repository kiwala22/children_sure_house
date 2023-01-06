# contact us model
class ContactUs < ApplicationRecord
  attr_accessor :name, :email, :message, :nickname, :subject, :check

  validates :name, presence: true

  validates :email, presence: true, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ } # ,:multiline => true

  validates :message, presence: true, length: { minimum: 10, maximum: 1000 }

  validates :subject, presence: true, length: { maximum: 25 }

  validates :check, presence: false

  def initialize(attributes = {})
    super
    # first check if the attributes are not empty
    return if attributes.blank?

    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def deliver
    ContactUsMailer.support(name, email, subject, message).deliver_now
  end

  def persisted?
    false
  end
end
