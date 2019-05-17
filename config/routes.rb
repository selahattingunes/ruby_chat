Rails.application.routes.draw do
  get 'messajcontroller/create'
  resources :userphotos
  get 'online_oda', to: "online_oda#index"
  namespace :on_taraf do
    get 'anasayfa/index'
  end
  
  
  get 'panel', to: "admin#index"
  devise_for :users
  root "on_taraf/anasayfa#index" #ana sayfa
end
