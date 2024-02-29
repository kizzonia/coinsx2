json.extract! product, :id, :name, :sub_title, :price, :pimg, :link, :slug, :created_at, :updated_at
json.url product_url(product, format: :json)
