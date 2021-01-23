class Contact < ApplicationRecord
  validates :email, :name, :content, presence: true
  validates :content, length: { maximum: 140 }
end
