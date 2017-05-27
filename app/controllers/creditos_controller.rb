class CreditosController < ApplicationController
  def credito
  end

def show
@credito = Credito.find(params[:id])
end

def create
@credito = Credito.new(usuario_params)

@credito.save
  end

private
 def usuario_params
 params.require(:credito).permit(:valor)
 end
end
