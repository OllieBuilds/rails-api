class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :exercise_name, null: false, index: true
      t.string :exercise_targeted_muscles, null: false
    end
  end
end
