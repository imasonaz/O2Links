json.array!(@charm_items) do |charm_item|
  json.extract! charm_item, :id, :Name, :ProductID
  json.url charm_item_url(charm_item, format: :json)
end
