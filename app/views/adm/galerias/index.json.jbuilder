json.array!(@adm_galerias) do |adm_galeria|
  json.extract! adm_galeria, :id, :titulo, :descricao, :imagem_capa
  json.url adm_galeria_url(adm_galeria, format: :json)
end
