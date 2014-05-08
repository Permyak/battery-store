json.array!(@purchases) do |purchase|
  json.extract! purchase, :user_id
  json.url purchase_url(purchase, format: :json)
end