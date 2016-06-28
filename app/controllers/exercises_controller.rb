class ExercisesController < ApplicationController

  def add
    @exercise = Exercise.create(exercise_params)
    if @exercise.valid?
      render json: @exercise, status: :created
    else
      head :bad_request
    end
  end

private

  def exercise_params
    params.require(:exercise).permit(:exercise_name, :exercise_targeted_muscles)
  end
end
