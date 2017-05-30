class RegistrationController < ApplicationController
def new
@user= User.new
end

def create
@user=User.new
@user.nombre = params[:user][:nombre]
@user.apellido = params[:user][:apellido]
@user.telefono = params[:user][:telefono].to_i
@user.email = params[:user][:email]
@user.password = params[:user][:password]
@user.password_confirmation =params[:user][:password_confirmation]

if @user.errors.blank?
@user.save
redirect_to '/login'
else
render :action => "new"
end
end
end
