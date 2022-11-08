class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.integer :program_id
      t.string :exercise_name
      t.integer :prescribed_sets
      t.integer :prescribed_reps
      t.integer :prescribed_weight
      t.integer :performed_sets, :default => 0
      t.integer :peformed_reps, :default => 0
      t.integer :performed_weight, :default => 0
      t.integer :rest_duration, :default => 0
      t.string :notes, :default => nil

      t.timestamps
    end
  end
end
