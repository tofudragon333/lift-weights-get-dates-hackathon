class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :program_id, :exercise_name, :prescribed_sets, :prescribed_reps, :prescribed_weight, :performed_sets, :peformed_reps, :performed_weight, :rest_duration, :notes
end
