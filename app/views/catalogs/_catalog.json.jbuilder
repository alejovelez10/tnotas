json.extract! catalog, :id, :name, :description, :image, :state, :created_at, :updated_at
json.url catalog_url(catalog, format: :json)
