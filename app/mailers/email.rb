class Email < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.recepcion.subject
  #
  def recepcion(parametros)
    @nombre = parametros[:nombre]
    @remite = parametros[:correo]
    @cuerpo = parametros[:mensaje]
    mail to: "ojosdeserbio@gmail.com", :subject => parametros[:asunto]
  end
end
