json.array!(@study_units) do |study_unit|
  json.extract! study_unit, :id, :description
  json.url study_unit_url(study_unit, format: :json)
end
