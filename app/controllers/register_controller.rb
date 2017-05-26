class RegisterController < ApplicationController
  def registrar
  end

def show
@registrarse = Registrarse.find(params[:id])
end

def create
@usuario = Usuario.new(usuario_params)

@usuario.save
redirect_to @usuario
  end

private
 def usuario_params
 params.require(:usuario).permit(:nombre,:apellido,:mail,:contraseña,:telefono,:foto,:puntaje)
 end
end
