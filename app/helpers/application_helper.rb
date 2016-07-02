module ApplicationHelper
  
  def ponLink(parametros)
    link_to parametros[:texto], parametros[:url], :class=>parametros[:clase]
  end
  
  def ponImagen(parametros)
    image_tag parametros[:img], :class=>parametros[:clase]
  end
  
  def esActive(parametros)
    if params[:action] == parametros[:controlador]
      return "class='active'".html_safe
    end
  end
  
  def abreForm(parametros)
    return ("<form id='"+parametros[:id]+"' class='"+parametros[:clase]+"' method='"+parametros[:metodo]+"' action='"+parametros[:accion]+"'>").html_safe
  end
  
  def cierraForm
    return "</form>".html_safe
  end
  
  def ponLabel(parametros)
    label_tag parametros[:para], parametros[:texto], :class=>parametros[:clase]
  end
  
  def ponCampoTexto(parametros)
    text_field_tag parametros[:id], parametros[:valor], :class=>parametros[:clase], :placeholder=>parametros[:holder]
  end
  
  def ponCampoEmail(parametros)
    email_field_tag parametros[:id], parametros[:valor], :class=>parametros[:clase], :placeholder=>parametros[:holder]
  end
  
  def ponCampoTextarea(parametros)
    text_area_tag parametros[:id], parametros[:valor], :rows=>parametros[:filas], :cols=>parametros[:columnas], :class=>parametros[:clase], :placeholder=>parametros[:holder]
  end
  
end
