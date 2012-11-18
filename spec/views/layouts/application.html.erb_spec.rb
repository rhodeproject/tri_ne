require "spec_helper"

describe "layouts/application.html.erb" do
  it "should contain selector flash" do
    render
    rendered.should have_selector("div", :class => "container-fluid")
  end

  it "should contain selector header" do
    render
    rendered.should have_selector("header", :class => "navbar navbar-fixed-top")
  end

  it "should contain selector div with class navbar-inner" do
    render
    rendered.should have_selector("div", :class => "navbar-inner")
  end

  it "should contain selector div with class container" do
    render
    rendered.should have_selector("div", :class => "container")
  end

  it "should render selector nav" do
    render
    rendered.should have_selector("nav")
  end

  it "should render selector ul with class nav pull-right" do
    render
    rendered.should have_selector("ul", :class => "nav pull-right")
  end

  it "should render selector a with id navHome" do
    render
    rendered.should have_selector("a", :id => "navHome")
  end

  it "should render selector a with id navMembers" do
    render
    rendered.should have_selector("a", :id => "navMembers")
  end

  it "should render selector a with id navLeadership" do
    render
    rendered.should have_selector("a", :id => "navLeadership")
  end

  it "should render selector a with id navSponsors" do
    render
    rendered.should have_selector("a", :id => "navSponsors")
  end

  it "should render the selector footer with class footer" do
    render
    rendered.should have_selector("footer", :class => "footer")
  end

  it "should render the selector small" do
    render
    rendered.should have_selector("small")
  end

end