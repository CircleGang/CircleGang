Rails.application.routes.draw do
  get 'home/top'

  devise_for :users, :controllers => {
 :registrations => 'users/registrations',
 :sessions => 'users/sessions'
}
  # devise_for :controlers

  resources :users_prof
  resources :circles
  
  post 'users_prof/create' => 'users_prof#create', :as => :user_profs
  # patch "users_prof/#{@user_prof.id}/update" => 'users_prof#update', :as => :users_profs
  # get 'circles/new'=>'circles#new'
  # get 'circles/show'=>'circles#show'
  # get '/circles' => 'circles#index'
  # get '/circle/;id' => 'circles#show',as: 'circle'
  # get '/circles/:id/edit' => 'circles#edit', as: 'edit_circle'
  # patch '/circles/:id' => 'circles#update', as: 'update_circle'

  # post '/circles' => 'circles#create'

   # '/circles' => 'circles#create'

   # get 'users_prof/new' => 'users_prof#new'
   # get 'users_prof/:id' => 'users_prof#show'
  

  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
