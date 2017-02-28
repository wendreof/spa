json.array!(@generating_themes) do |generating_theme|
  json.extract! generating_theme, :id, :description, :long_description
  json.url generating_theme_url(generating_theme, format: :json)
end
