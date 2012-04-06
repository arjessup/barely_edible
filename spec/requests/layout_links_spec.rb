require 'spec_helper'

describe "LayoutLinks" do
  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have a New page at '/new'" do
    get '/new'
    response.should have_selector('title', :content => "New Bookmark")
  end
  
  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign Up")
  end

  it "should have the right links on the layout" do
    visit root_path
    
    click_link "Home"
    response.should have_selector('title', :content => "Home")
    
    click_link "Create New Bookmark"
    response.should have_selector('title', :content => "New Bookmark")
    
    click_link "Index"
    response.should have_selector('title', :content => "Index")

    click_link "Sign Up"
    response.should have_selector('title', :content => "Sign Up")
  end
end
