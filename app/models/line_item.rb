class LineItem < ApplicationRecord
  belongs_to :charity
  belongs_to :cart
end
