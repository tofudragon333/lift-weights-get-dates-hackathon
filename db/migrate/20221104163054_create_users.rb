class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.integer :current_weight
      t.integer :goal_weight

      t.timestamps
    end
  end
end
