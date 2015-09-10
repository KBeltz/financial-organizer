json.array!(@payments) do |payment|
  json.extract! payment, :id, :account_id, :amount, :payment_date, :confirmation_number
  json.url payment_url(payment, format: :json)
end
