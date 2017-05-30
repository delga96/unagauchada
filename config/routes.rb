Rails.application.routes.draw do

  devise_for :users
  get '/perfil'  => 'user#perfil'
  get '/registrarse'  => 'registrarse#registrarse'
  post '/user/registrarse' => 'user#create'
  get '/publicar' => 'publicar#publicar_favor'
  get '/user'  => 'user#perfil'
  get '/inicio' =>  'inicio#index'
  root 'inicio#index'
  get '/login'  => 'login#login'
  get '/registration' => 'registration#new'
  get '/favor/nuevo' => 'favor#nuevo'

resources :registrarse
resources :registration
resources :iniciar
resources :user
resources :moderador
resources :credito
resources :devise
end
