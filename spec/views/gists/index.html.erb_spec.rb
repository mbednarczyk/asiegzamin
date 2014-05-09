require 'spec_helper'
 
describe "gists/index.html.erb" do
  before do
    assign(:gists, [stub_model(Gist, snippet: 'foo'), stub_model(Gist, snippet: 'bar')])
  end
 
  # it "displays header" do
  #   #render
  #   #expect(rendered).to include("Lista naszych wrzutek")
  # end

  # it "renders _gists partial" do
  #   render
  #   expect(view).to render_template(:partial => "_gist", :count => 1)
  # end

  # it "display facebook likes" do
  #   render
  #   expect(rendered).to include("Lista")
  # end
end