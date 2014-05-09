require 'spec_helper'
 
describe "gists/new.html.erb" do
  before do
    assign(:gist, stub_model(Gist, snippet: 'foo'))
  end
 
  it "display header" do
    render
    expect(rendered).to include("Nowa wrzutka")
  end

  it "check existing language form" do
    render
    expect(rendered).to include("Język")
  end

  it "check existing language form" do
    render
    expect(rendered).to include("Opis")
  end
 
  it "renders _form partial" do
    render
    expect(view).to render_template(:partial => "_form", :count => 1)
  end
end