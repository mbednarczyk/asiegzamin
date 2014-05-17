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

  describe "CRUD tests" do
    before :each do 
      @gist = FactoryGirl.create(:gist) 
  end 

  describe "#snippet" do
    it "returns the correct snippet" do
        @gist.snippet.should eql "System.out.println(java)"
    end
end
	describe "#lang" do
    it "returns the correct lang" do
        @gist.lang.should eql "java"
    end
end
	describe "#description" do
    it "returns the correct description" do
        @gist.description.should eql "Sample of Java"
    end
end
end
end
