json.extract! card, :id, :guess_action, :forbidden_words, :descriptive_hint, :times_played, :is_explicit, :created_at, :updated_at
json.url card_url(card, format: :json)
