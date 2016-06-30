curl --include --request POST 'http://localhost:3000/circuits' \
  --header "Authorization: Token token=" \
  --header "Content-Type: application/json"
  --data '{
    "exercise": {
      "id": 5
    }
  }'
