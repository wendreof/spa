json.array!(@activities) do |teacher_activity|
  json.extract! teacher_activity, :id, :description
  json.url teacher_activity_url(teacher_activity, format: :json)
end
