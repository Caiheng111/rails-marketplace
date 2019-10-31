class Volunteer < ApplicationRecord

  validates :name, presence: true, length: { minimum: 3, maximum: 20 }
  validates :description, presence: true, length: { minimum: 10, maximum: 1000 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 },
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }

  belongs_to :user
  has_one_attached :picture
end
