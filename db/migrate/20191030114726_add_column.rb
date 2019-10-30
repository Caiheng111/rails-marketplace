class AddColumn < ActiveRecord::Migration[5.2]
  def change
    add_reference :charities, :organization, foreign_key: true
  end
end
