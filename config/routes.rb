Rails.application.routes.draw do

  get '/perfil'  => 'user#perfil'
  get '/registrarse'  => 'user#registrarse'
  post '/user/registrarse' => 'user#create'
  get '/publicar' => 'publicar#publicar_favor'
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
