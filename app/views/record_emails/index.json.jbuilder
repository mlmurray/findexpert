json.array!(@record_emails) do |record_email|
  json.extract! record_email, :email
  json.url record_email_url(record_email, format: :json)
end
