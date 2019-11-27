class Charity < ApplicationRecord
 
  belongs_to :category
  belongs_to :organization
  has_many_attached :pictures
  has_many :line_items, dependent: :destroy

  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :summary, :challenges, :solution,  presence: true, length: { minimum: 10, maximum: 1000 }

private
  def not_refereced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end


end
