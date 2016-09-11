Rails.application.routes.draw do
  devise_for :controlers
  devise_for :users
  # resources :users_prof
  
  get 'circles/new'=>'circles#new'
  get 'circles/show'=>'circles#show'
  get '/circles' => 'circles#index'
  get '/circle/;id' => 'circles#show',as: 'circle'
  get '/circles/:id/edit' => 'circles#edit', as: 'edit_circle'
  patch '/circles/:id' => 'circles#update', as: 'update_circle'

   # '/circles' => 'circles#create'

   get 'users_prof/new' => 'users_prof#new'
   get 'users_prof/show' => 'users_prof#show'
  

   root 'circles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
