require 'spec_helper'
 
describe "gists/edit.html.erb" do
  before do
    assign(:gist, stub_model(Gist, snippet: "foo bar", description: "test", language: "ruby"))
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
    render
    expect(rendered).to include("foo bar")
  end

  it "display description data" do
    render
    expect(rendered).to include("test")
  end
 
  it "displays description data" do
    render
    expect(rendered).to include("Opis")
    expect(rendered).to include("test")
  end

  it "displays snippet data" do 
    render
    expect(rendered).to include("Wrzutka")
    expect(rendered).to include("foo bar")
  end

  it "submit button existing" do
    render
    expect(rendered).to include("submit")
  end
  it "show button have correct text" do
    render
    expect(rendered).to include("Pokaż")
  end
  it "back button have correct text" do
    render
    expect(rendered).to include("Powrót")
  end
  it "submit button have correct text" do
    render
    expect(rendered).to include("Gotowe")
  end
end