class RegistrarseController < ApplicationController
def show
@usuario = Usuario.find(params[:id])
end

def create
@usuario = Usuario.new(usuario_params)

@usuario.save
redirect_to '/inicio'
  end

private
 def usuario_params
 params.require(:usuario).permit(:nombre,:apellido,:email,:contraseña,:telefono,:avatar,:puntaje)
 end
end
