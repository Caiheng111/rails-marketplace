class AddUserToDonor < ActiveRecord::Migration[5.2]
  def change
    add_reference :donors, :user, foreign_key: true
  end
end
