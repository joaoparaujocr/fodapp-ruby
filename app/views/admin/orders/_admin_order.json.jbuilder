json.extract! admin_order, :id, :customer_email, :total, :address, :fullfiled, :created_at, :updated_at
json.url admin_order_url(admin_order, format: :json)
