json.array!(@mails) do |mail|
  json.extract! mail, :email
  json.url mail_url(mail, format: :json)
end
