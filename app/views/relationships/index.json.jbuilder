json.array!(@relationships) do |relationship|
  json.extract! relationship, :id, :attitudinal_skills_id, :specific_skills_id, :category_id, :activities_id
  json.url relationship_url(relationship, format: :json)
end
