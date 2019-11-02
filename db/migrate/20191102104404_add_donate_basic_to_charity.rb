class AddDonateBasicToCharity < ActiveRecord::Migration[5.2]
  def change
    add_column :charities, :donate_basic, :integer
  end
end
