# Exercise Controller
class ExercisesController < ApplicationController
  # Post new exercise
  def add
    @exercise = Exercise.create(exercise_params)
    if @exercise.valid?
      render json: @exercise, status: :created
    else
      head :bad_request
    end
  end

  # Get all exercises
  def index
    @exercises = Exercise.all

    render json: @exercises
  end

  # Get exercise by name
  def search
    @exercises = Exercise.select { |e|
      if e.exercise_name.downcase.include? params[:exercise_name].downcase
        e
      elsif e.id == params[:id].to_i
        e
      end
    }

    render json: @exercises
  end

  # Delete exercise by id
  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.delete
  end

  # private
  private

  def exercise_params
    params.require(:exercise).permit(:exercise_name, :exercise_targeted_muscles)
  end
end
