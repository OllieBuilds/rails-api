
class Exercise < ActiveRecord::Base
  belongs_to :circuit
  validates :exercise_name, :exercise_targeted_muscles, presence: true
end
