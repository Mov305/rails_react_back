Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # defines the Api/v1/greetings routes
  namespace :api do
    namespace :v1 do
      resources :greetings
    end
  end
end
