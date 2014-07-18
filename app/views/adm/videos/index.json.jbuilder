json.array!(@adm_videos) do |adm_video|
  json.extract! adm_video, :id, :titulo, :codigo
  json.url adm_video_url(adm_video, format: :json)
end
