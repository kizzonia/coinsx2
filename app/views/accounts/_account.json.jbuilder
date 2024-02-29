json.extract! account, :id, :account_type, :wallet, :balance, :created_at, :updated_at
json.url account_url(account, format: :json)
