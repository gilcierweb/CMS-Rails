json.array!(@adm_noticias) do |adm_noticia|
  json.extract! adm_noticia, :id, :titulo, :subtitulo, :content, :img_capa, :autor
  json.url adm_noticia_url(adm_noticia, format: :json)
end
