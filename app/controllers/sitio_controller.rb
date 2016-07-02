class SitioController < ApplicationController
  def index
    @titulo="Inicio"
  end

  def localizacion
    @titulo="Localizacion"
  end

  def contacto
    if request.get?
      @titulo="Contacto"
    else
      begin
        if Email.recepcion(params).deliver
          flash[:succ]="Correo enviado con éxito"
        else
          flash[:fail]="Error al enviar el correo"
        end
        redirect_to contacto_url
      rescue
      end
    end
  end
  
  def mandar
  end
end
