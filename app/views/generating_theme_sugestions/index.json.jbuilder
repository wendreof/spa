json.array!(@generating_theme_sugestions) do |generating_theme_sugestion|
  json.extract! generating_theme_sugestion, :id, :description, :long_description
  json.url generating_theme_sugestion_url(generating_theme_sugestion, format: :json)
end
