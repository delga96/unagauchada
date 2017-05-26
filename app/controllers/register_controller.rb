class RegisterController < ApplicationController
  def usuario
  end

def show
@usuario = Usuario.find(params[:id])
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
