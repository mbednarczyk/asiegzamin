require 'spec_helper'
 
describe "gists/edit.html.erb" do
  before do
    assign(:gist, stub_model(Gist, snippet: "foo bar"))
  end
 
  it "display header" do
    render
    expect(rendered).to include("Edytowanie wrzutki")
  end
 
  it "renders _form partial" do
    render
    expect(view).to render_template(:partial => "_form", :count => 1)
  end
 
  it "check existing language form" do
    render
    expect(rendered).to include("Język")
  end
 
  it "check existing language form" do
    render
    expect(rendered).to include("Opis")
  end
 
  it "displays Snippet data" do
   
  end
 
  # it "displays description data" do
  #   assign(:gist, stub_model(Gist, description: "some text"))
  #   render
  #   expect(rendered).to include("Description:")
  #   expect(rendered).to include("some text")
  # end
end