require 'spec_helper'

describe Gist do
	
	describe "#new Gist-two params" do
    it "takes two parameters and returns a Gist object" do
      @gist = Gist.new  "", ""
      @gist.should be_an_instance_of Gist
    end
end

  describe "#new Gist-one params" do
    it "takes one parameter and returns a Gist object" do
      @gist = Gist.new  ""
      @gist.should be_an_instance_of Gist
    end
end

  describe "#new Gist-no params" do
      it "takes no parameters and returns a Gist object" do
        @gist = Gist.new  
        @gist.should be_an_instance_of Gist
      end
  end
end
