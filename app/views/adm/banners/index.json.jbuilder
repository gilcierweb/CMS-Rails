json.array!(@adm_banners) do |adm_banner|
  json.extract! adm_banner, :id, :titulo, :imagem, :link
  json.url adm_banner_url(adm_banner, format: :json)
end
