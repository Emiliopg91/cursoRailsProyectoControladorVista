module ApplicationHelper
  def ponLink(parametros)
    link_to parametros[:texto], parametros[:url]
  end
end
