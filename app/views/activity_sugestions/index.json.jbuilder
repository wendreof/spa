json.array!(@activity_sugestions) do |activity_sugestion|
  json.extract! activity_sugestion, :id, :description
  json.url activity_sugestion_url(activity_sugestion, format: :json)
end
