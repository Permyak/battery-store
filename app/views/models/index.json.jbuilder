json.array!(@models) do |model|
  json.extract! model, :name, :company_id
  json.url model_url(model, format: :json)
end