json.array!(@items) do |item|
  json.extract! item, :id, :ProductID
  json.url item_url(item, format: :json)
end
