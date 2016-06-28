class ExercisesController < ApplicationController
  def add_exercise
    @exercise = exercises.build(params)

    if @exercise.save
      render json: @exercise, status: :created, location: @exercise
    else
      render json: @exercise.errors, status: :unprocessable_entity
    end
  end
end
