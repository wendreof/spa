json.array!(@course_module_study_units) do |course_module_study_unit|
  json.extract! course_module_study_unit, :id
  json.url course_module_study_unit_url(course_module_study_unit, format: :json)
end
