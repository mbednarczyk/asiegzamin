require "spec_helper"


describe GistsController do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the gists into @gists" do
      gist1, gist2 = Gist.create!, Gist.create!
      get :index
      expect(assigns(:gists)).to match_array([gist1, gist2])
    end
  end

  describe "GET #new" do
    it "responds successfully with an Http 2000 status code" do
      get :new
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the new page template" do
      get :new
      expect(response).to render_template("new")  
    end

  end

  describe "GET #search" do
    it "Gists responds successfully with an Http 2000 status code" do
      get :search
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the new page template" do
      get :search
      expect(response).to render_template("search")  
    end

    it "renders the new page template" do
      get :search
      expect(response).to render_template("search")  
    end

  end

  describe "GET #update" do  

  before :each do 
      @gist = FactoryGirl.create(:gist) 
  end 

    it "update gist" do
      @attr = { :snippet => "new snippet", :lang => "c++" , :description => "sad language" }
      put :update, :id => @gist.id, :gist => @attr
          
      @gist.reload 
      @gist.description.should eq("sad language") 
    end

    it "redirect to gists after edit" do
      @attr = { :snippet => "div div div", :lang => "html" , :description => "easy man" }
      put :update, :id => @gist.id, :gist => @attr
          
      @gist.reload 
      expect(response).to redirect_to "/gists/"+@gist.id.to_s
    end

  end

  #describe "#hasMethod Gist" do
  #    it "Gist has method edit" do
  #      @gist = Gist.new  
  #      GistsController.should respond_to show
  #    end
  #end

  #describe "POST #create" do
  #  it "Gists responds successfully with an Http 2000 status code" do
  #    post :create, gists: {lang => '', description => ''}
  #    expect(response).to be_success
  #    expect(response.status).to eq(200)
  #  end
  #end

  
end
