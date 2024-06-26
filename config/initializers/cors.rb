Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # origins 'http://127.0.0.1:3000'
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :put]
  end
end