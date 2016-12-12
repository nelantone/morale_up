Rails.application.routes.draw do
  root 'quotes#index'
  get '/refresh_quote', to: 'quotes#refresh_quote'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
