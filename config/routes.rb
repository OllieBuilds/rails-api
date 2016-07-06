Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  post '/exercise' => 'exercises#add'
  get '/exercises' => 'exercises#index'
  get '/exercise/:exercise_name' => 'exercises#search'
  delete '/exercise/:id' => 'exercises#destroy'
  post '/circuits' => 'circuits#create'
  get '/circuits' => 'circuits#index'
  get '/circuits/:id' => 'circuits#show'
  delete '/circuits/:id' => 'circuits#destroy'
end
