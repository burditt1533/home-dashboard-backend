json.extract! room, :id, :name, :created_at, :updated_at, :goal_level
json.url room_url(room, format: :json)
