require 'spec_helper'
 
describe "gists/show.html.erb" do
  # it "displays Lang data" do
  #   assign(:gist, stub_model(Gist, lang: "ruby"))
  #   render
  #   expect(rendered).to include("Język:")
  #   expect(rendered).to include("ruby")
  # end
 
  it "displays Snippet data" do
    assign(:gist, stub_model(Gist, snippet: "foo bar"))
    render
    expect(rendered).to include("Wrzutka:")
    expect(rendered).to match(/foo.*bar/)
  end
 
  it "displays description data" do
    assign(:gist, stub_model(Gist, description: "some text"))
    render
    expect(rendered).to include("Opis:")
    expect(rendered).to include("some text")
  end
end