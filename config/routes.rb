Rails.application.routes.draw do

  get '/user/perfil'  => 'user#perfil'
  get '/user/registrarse'  => 'user#registrarse'
  post '/user/registrarse' => 'user#create'

  get '/publicar' => 'publicar#publicar_favor'
  get 'register/registrar'
  get 'inicio/index'
  root 'inicio#index'

  get 'login/login'
	
resources :registrarse
resources :register
resources :iniciar
resources :usuario
resources :moderador
resources :credito
end
