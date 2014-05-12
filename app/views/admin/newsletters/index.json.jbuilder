json.array!(@admin_newsletters) do |admin_newsletter|
  json.extract! admin_newsletter, :id
  json.url admin_newsletter_url(admin_newsletter, format: :json)
end
