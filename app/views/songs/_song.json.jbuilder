json.extract! song, :id, :name, :artist, :song_url, :tempo, :lyrics, :created_at, :updated_at
json.lyrics do
  json.lyrics.to_json
end
