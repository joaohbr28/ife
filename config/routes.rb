Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :homes
   #root :to => "home#index"
   get '/homes/:id', to: 'home#show'
end
