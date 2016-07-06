curl --include --request POST 'http://localhost:3000/circuits' \
  --header 'Authorization: Token token=BAhJIiU5YmJhNDM5ODYxNzVhOGYxMWFiYzQ5MDIyOTJiMWFjZAY6BkVG--199d2240920f463919f35a632885409568f97113' \
  --header 'Content-Type: application/json' \
  --data '{
    "circuit": {
        "exercise_name": "Push ups",
        "exercise_targeted_muscles": "arms",
        "exercise_reps": 5
      }
  }'
