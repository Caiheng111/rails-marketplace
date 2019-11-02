class LineItem < ApplicationRecord
  belongs_to :charity
  belongs_to :cart

  # def total_price
  #   chairty.price.to_i * quantity.to_i
  # end
end
