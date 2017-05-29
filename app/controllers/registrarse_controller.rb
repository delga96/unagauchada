class RegistrarseController < ApplicationController
def show
@user = User.find(params[:id])
end

def create
@user = User.new(usuario_params)

@user.save
redirect_to '/inicio'
  end

private
 def usuario_params
 params.require(:user).permit(:nombre,:apellido,:email,:contraseña,:telefono,:avatar,:puntaje)
 end
end
