class Charity < ApplicationRecord

  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :summary, :challenges, :solution,  presence: true, length: { minimum: 10, maximum: 1000 }

  belongs_to :category
  belongs_to :organization
  has_many_attached :pictures

  def self.search(search)
    if search 
      where(["title LIKE ?","%#{search}%"])
    else
      all
    end
  end

end
