json.array!(@methodologies) do |methodology|
  json.extract! methodology, :id, :description, :long_description
  json.url methodology_url(methodology, format: :json)
end
