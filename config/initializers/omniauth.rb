OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :github, '97ee065e9d33527648b3', '9b053190d91f07f050d5e3bf2af881855fdcc7d3', scope: "user:email"
end