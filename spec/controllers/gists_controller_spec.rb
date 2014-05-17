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

  describe "CRUD tests" do
    before :each do 
      @gist = FactoryGirl.create(:gist) 
  end 

  describe "POST #create" do 
   
   it "renders to show with particular gist" do 
      get :show, id: @gist
      response.should render_template :show 
   end
   
   it "redirects to created gist page" do
      post :create, gist: FactoryGirl.attributes_for(:gist)
      expect(response).to redirect_to "/gists/2" 
    end
  end


  describe "GET #update" do  

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

  describe "POST #delete" do  
    it "remove gist" do
        expect do
          delete :destroy, id: @gist
        end.to change(Gist, :count).by(-1)
      end
    end

   it "redirects to the gist list" do

      delete :destroy, id: @gist
      response.should redirect_to("/gists")
    end

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

  # context "invalid attributes" do
  #
  #  it "not saved invalid gist" do
  #    expect do
  #      post :create, gist: FactoryGirl.attributes_for(:invalid_gist)
  #    end.not_to change(Gist, :count)
  #  end
  #end

