json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :name, :generating_theme_id, :workload, :specific_skill_id, :category_id, :know_more
  json.url meeting_url(meeting, format: :json)
end
