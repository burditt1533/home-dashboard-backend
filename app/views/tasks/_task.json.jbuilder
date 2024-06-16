json.extract! task, :id, :name, :description, :level, :is_complete, :created_at, :updated_at, :date_completed
json.url task_url(task, format: :json)
