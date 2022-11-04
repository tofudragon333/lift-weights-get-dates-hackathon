class CreatePrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :programs do |t|
      t.integer :user_id
      t.string :name
      t.string :notes

      t.timestamps
    end
  end
end
