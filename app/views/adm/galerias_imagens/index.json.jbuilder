json.array!(@adm_galerias_imagens) do |adm_galerias_imagem|
  json.extract! adm_galerias_imagem, :id, :galeria_id, :imagem
  json.url adm_galerias_imagem_url(adm_galerias_imagem, format: :json)
end
