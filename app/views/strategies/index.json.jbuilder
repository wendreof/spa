json.array!(@strategies) do |strategy|
  json.extract! strategy, :id, :description, :category_id
  json.url strategy_url(strategy, format: :json)
end
