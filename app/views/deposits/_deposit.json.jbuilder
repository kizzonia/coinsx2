json.extract! deposit, :id, :payment_type, :amount, :email, :status, :user_id, :created_at, :updated_at
json.url deposit_url(deposit, format: :json)
