curl --include --request POST http://localhost:3000/exercise \
  --header "Content-Type: application/json" \
  --data '{
    "exercise":
      {
        "exercise_name": "Push ups",
        "exercise_targeted_muscles": "Chest and back"
      }
  }'