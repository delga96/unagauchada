Rails.application.routes.draw do

  devise_for :usuarios
  get '/perfil'  => 'user#perfil'
  get '/registrarse'  => 'registrarse#registrarse'
  post '/user/registrarse' => 'user#create'
  get '/publicar' => 'publicar#publicar_favor'
  get '/user'  => 'user#perfil'
  get '/inicio' =>  'inicio#index'
  root 'inicio#index'
  get '/login'  => 'login#login'
	
resources :registrarse
resources :register
resources :iniciar
resources :usuario
resources :moderador
resources :credito
end
