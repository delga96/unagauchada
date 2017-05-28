class UserController < ApplicationController
def show
@usuarios = Usuarios.find(params[:id])
end

def create
@usuarios = Usuarios.new(usuario_params)

@usuarios.save
redirect_to '/inicio'
  end

private
 def usuario_params
 params.require(:usuarios).permit(:nombre,:apellido,:email,:contraseña,:telefono,:avatar,:puntaje)
 end
end
