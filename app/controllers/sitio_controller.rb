class SitioController < ApplicationController
  def index
    @titulo="Inicio"
  end

  def localizacion
    @titulo="Localizacion"
  end

  def contacto
    @titulo="Contacto"
  end
end
