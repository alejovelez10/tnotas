json.extract! some_product, :id, :name, :description, :user_id, :state, :image, :created_at, :updated_at
json.url some_product_url(some_product, format: :json)
