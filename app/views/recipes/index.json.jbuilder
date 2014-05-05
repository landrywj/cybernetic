json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :technology, :name, :procedure
  json.url recipe_url(recipe, format: :json)
end
