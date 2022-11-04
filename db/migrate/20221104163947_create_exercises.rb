class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.integer :program_id
      t.string :exercise_name
      t.integer :prescribed_sets
      t.integer :prescribed_reps
      t.integer :prescribed_weight
      t.integer :performed_sets
      t.integer :peformed_reps
      t.integer :performed_weight
      t.integer :rest_duration
      t.string :notes

      t.timestamps
    end
  end
end
