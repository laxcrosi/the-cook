json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :description, :user_id, :photo, :url
  json.url recipe_url(recipe, format: :json)
end
