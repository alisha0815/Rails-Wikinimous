Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# Read all the tasks
  get '/articles', to:'articles#index'
# Create a task
  get '/articles/new', to:'articles#new' # display the form
  post '/articles', to:'articles#create'
# Read one task
  get '/articles/:id', to:'articles#show', as: :article
# Update a task
  get '/articles/:id/edit', to:'articles#edit', as: :edit
  patch '/articles/:id', to:'articles#update'
# Delete a task
  delete '/articles/:id', to:'articles#destroy'
end
