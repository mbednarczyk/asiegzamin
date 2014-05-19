require 'spec_helper'

describe User do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe "#new User-no params" do
      it "takes no parameters and returns a User object" do
        @user = User.new  
        @user.should be_an_instance_of User
      end
  end

  #describe "#new User-one parameter" do
  #    it "takes one parameter and returns a User object" do
  #      @user = User.new  ""
  #      @user.should be_an_instance_of User
  #    end
  #end

  #describe "#new User-two params" do
  #    it "takes two parameters and returns a User object" do
  #      @user = User.new  "", ""
  #      @user.should be_an_instance_of User
  #    end
  #end

  it "should allow login" do
	    @user = FactoryGirl.create(:user)
	    auth = mock_auth_hash
	    tested_user = User.from_omniauth(auth)
	    expect(tested_user.name).to eq(@user.name)
	end

end
