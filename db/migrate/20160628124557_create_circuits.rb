class CreateCircuits < ActiveRecord::Migration
  def change
    create_table :circuits do |t|
      t.string :exercise_name, null: false, index: true
      t.integer :exercise_weight
      t.integer :exercise_reps
      t.string :exercise_targeted_muscles, null: false

      t.references :user, foreign_key: true, null: false
    end
  end
end
