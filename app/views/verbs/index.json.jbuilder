json.array!(@verbs) do |verb|
  json.extract! verb, :id, :description, :category_id
  json.url verb_url(verb, format: :json)
end
