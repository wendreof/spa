json.array!(@specific_skills) do |specific_skill|
  json.extract! specific_skill, :id, :description
  json.url specific_skill_url(specific_skill, format: :json)
end
