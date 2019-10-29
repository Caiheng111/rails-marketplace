class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :title
      t.text :location
      t.text :website
      t.text :description

      t.timestamps
    end
  end
end
