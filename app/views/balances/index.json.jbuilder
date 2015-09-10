json.array!(@balances) do |balance|
  json.extract! balance, :id, :account_id, :balance_amount
  json.url balance_url(balance, format: :json)
end
