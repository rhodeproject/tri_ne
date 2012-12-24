require 'spec_helper'

describe "static_pages/index.html.erb" do
  it "renders a page that says Tri-NE" do
    render
    rendered.should contain("Tri-NE")
  end

  it "should contain selector div with id home" do
    render
    rendered.should have_selector("div", :id => "home")
  end

  it "should contain div with id sponsors" do
    render
    rendered.should have_selector("div", :id => "sponsors")
  end

  context "leadership section" do
    it "should contain div with id leadership" do
      render
      rendered.should have_selector("div", :id => "leadership")
    end

    it "should contain president" do
      render
      rendered.should have_selector("div", :id => "leadership") do |div|
        div.should have_selector("li") do |li|
          li.should contain("President: Tara Comer")
        end
      end
    end
  end
end