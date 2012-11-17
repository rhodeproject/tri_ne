require 'spec_helper'

describe "static_pages/index.html.erb" do
  it "renders a page that says Tri-NE" do
    render
    rendered.should contain("Tri-NE")
end
end