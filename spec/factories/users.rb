FactoryGirl.define do
  factory :user do
    name 'User'
    provider 'github'
    uid '9999'
    oauth_token 'token-github'
  end
end