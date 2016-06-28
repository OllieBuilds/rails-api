# Exercise Serializer
class ExerciseSerializer < ActiveModel::Serializer
  attributes :exercise_name, :exercise_targeted_muscles
end
