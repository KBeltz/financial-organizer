json.array!(@account_statuses) do |account_status|
  json.extract! account_status, :id, :account_id, :due_date, :overdue
  json.url account_status_url(account_status, format: :json)
end
