Foodtruckstop::Application.routes.draw do

 resources :foodtrucks

  match "about" => 'welcome#about', via: :get #I never made a welcome controller or view so I'm going to have to change this at some point.

  root :to => 'foodtrucks#index'

end 