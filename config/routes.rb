Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'congrats/:slug' => 'students#show'
  get 'gogogo/:password' => 'students#new'
  post 'create_the_student' => 'students#create'
  get 'seeall/:password' => 'students#index'
end
