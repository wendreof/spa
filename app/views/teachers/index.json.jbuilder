json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :registration, :name, :email
  json.url teacher_url(teacher, format: :json)
end
