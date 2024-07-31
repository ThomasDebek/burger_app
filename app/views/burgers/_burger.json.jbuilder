json.extract! burger, :id, :name, :description, :price, :created_at, :updated_at
json.url burger_url(burger, format: :json)
