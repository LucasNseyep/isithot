Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "climes#new"
  get "climes", to: "climes#index"
  post "climes", to: "climes#create"
  get "climes/:id", to: "climes#show", as: :clime
end
