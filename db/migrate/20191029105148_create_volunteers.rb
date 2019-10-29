class CreateVolunteers < ActiveRecord::Migration[5.2]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.text :description
      t.string :email
      t.text :skill
      t.text :location
      t.text :experience

      t.timestamps
    end
  end
end
