json.array!(@emails) do |email|
  json.extract! email, :id, :subject, :body, :date_time, :recipient
  json.url email_url(email, format: :json)
end
