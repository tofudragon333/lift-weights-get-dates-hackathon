class CreateProgressPhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :progress_photos do |t|
      t.integer :user_id
      t.date :date

      t.timestamps
    end
  end
end
