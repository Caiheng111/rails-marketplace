class CreateCharities < ActiveRecord::Migration[5.2]
  def change
    create_table :charities do |t|
      t.string :title
      t.string :location
      t.string :project_leader
      t.integer :raised_goal
      t.integer :current_raised
      t.text :summary
      t.text :challenges
      t.text :solution

      t.timestamps
    end
  end
end
