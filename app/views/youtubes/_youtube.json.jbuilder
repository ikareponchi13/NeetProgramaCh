json.extract! youtube, :id, :body, :youtube_url, :created_at, :updated_at
json.url youtube_url(youtube, format: :json)
