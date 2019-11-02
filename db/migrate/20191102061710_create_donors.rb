class CreateDonors < ActiveRecord::Migration[5.2]
  def change
    create_table :donors do |t|
      t.string :name
      t.text :email
      t.string :country

      t.timestamps
    end
  end
end
