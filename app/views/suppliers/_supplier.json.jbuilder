json.extract! supplier, :id, :name, :description, :image, :state, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
