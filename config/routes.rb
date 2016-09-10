Rails.application.routes.draw do
  devise_for :users
  
  get 'circles/new'=>'circles#new'
  get '/circles' => 'circles#index'
  get '/circle/;id' => 'circles#show',as: 'circle'
  get '/circles/:id/edit' => 'circles#edit', as: 'edit_circle'
  patch '/circles/:id' => 'circles#update', as: 'update_circle'

   # '/circles' => 'circles#create'


  root 'users_prof#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
 