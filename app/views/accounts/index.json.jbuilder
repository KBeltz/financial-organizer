json.array!(@accounts) do |account|
  json.extract! account, :id, :account_name, :payment_due, :min_payment, :payment_date, :payment_made, :balance
  json.url account_url(account, format: :json)
end
