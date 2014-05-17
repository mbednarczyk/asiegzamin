module OmniauthHelper
  
  def mock_auth_hash
    OmniAuth.config.mock_auth[:github] = {
      :provider => 'github',
      :uid => '9999',
      :info => {
        :name => 'User'
      },
      :credentials => {
        :token => 'token-github'
      }
    }

  end

end