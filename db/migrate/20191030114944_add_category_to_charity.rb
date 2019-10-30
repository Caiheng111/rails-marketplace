class AddCategoryToCharity < ActiveRecord::Migration[5.2]
  def change
    add_reference :charities, :category, foreign_key: true
  end
end
