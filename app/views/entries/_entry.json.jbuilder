json.extract! entry, :id, :title, :author, :body, :created_at, :updated_at
json.url entry_url(entry, format: :json)
