Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'shows#index'

  resources :shows
  get 'shows/find/:query', to: 'shows#find_show'
end
