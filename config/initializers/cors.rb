# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*' # this allows requests from any origin, you can replace it with a specific origin(s) if needed
    resource '*', # this allows requests to any path
      headers: :any, # this allows any headers to be sent in the request
      methods: [:get, :post, :put, :patch, :delete, :options, :head] # this allows the specified HTTP methods to be used
  end
end

