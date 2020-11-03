Rails.application.routes.draw do
  namespace :api do
    #USERS 
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    get "/users" => "users#index"
    patch "/users/:id" => "users#update"

    #EDUCATIONS
    post "/educations" => "educations#create"
    patch "/educations/:id" => "educations#update"
  end
end
