require 'spec_helper'

describe "static_pages/index.html.erb" do
  it "renders a page that says Tri-NE" do
    render
    rendered.should contain("Tri-NE")
  end

  it "renders a page that contains an h1 tag" do
    render
    rendered.should have_selector("h1")
  end

  it "should contain selector div with id home" do
    render
    rendered.should have_selector("div", :id => "home")
  end

  it "should contain div with id sponsors" do
    render
    rendered.should have_selector("div", :id => "sponsors")
  end

  it "should contain div with id leadership" do
    render
    rendered.should have_selector("div", :id => "leadership")
  end


end