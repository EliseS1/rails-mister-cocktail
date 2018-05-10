Rails.application.routes.draw do

  get "cocktails", to: "cocktails#index", as: :cocktails

  get "cocktails/new", to: "cocktails#new"

  get "cocktails/:id", to: "cocktails#show", as: :cocktail

  post "cocktails", to: "cocktails#create"

  get "doses/new", to: "doses#new"

  get "doses", to: "doses#index", as: :doses

  post "doses", to: "doses#create"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
