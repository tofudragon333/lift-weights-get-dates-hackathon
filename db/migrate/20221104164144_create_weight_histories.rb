class CreateWeightHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :weight_histories do |t|
      t.integer :user_id
      t.integer :weight
      t.date :date
      t.string :notes

      t.timestamps
    end
  end
end
