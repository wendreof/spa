json.array!(@specific_technical_competences) do |specific_technical_competence|
  json.extract! specific_technical_competence, :id, :description
  json.url specific_technical_competence_url(specific_technical_competence, format: :json)
end
