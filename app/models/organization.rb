class Organization < ApplicationRecord

  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
  validates_uniqueness_of :title, :website
  belongs_to :user
end
