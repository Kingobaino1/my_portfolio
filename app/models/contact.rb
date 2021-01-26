# rubocop:disable Style/MutableConstant
class Contact < ApplicationRecord
  validates :email, :name, :content, presence: true
  validates :content, length: { maximum: 140 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
end

# rubocop:enable Style/MutableConstant
