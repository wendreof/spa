json.array!(@categories) do |category|
  json.extract! category, :id, :desctipion
  json.url category_url(category, format: :json)
end
