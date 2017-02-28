json.array!(@attitudinal_skills) do |attitudinal_skill|
  json.extract! attitudinal_skill, :id, :tipo, :Description
  json.url attitudinal_skill_url(attitudinal_skill, format: :json)
end
