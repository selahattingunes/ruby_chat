json.extract! userphoto, :id, :alt, :created_at, :updated_at
json.url userphoto_url(userphoto, format: :json)
