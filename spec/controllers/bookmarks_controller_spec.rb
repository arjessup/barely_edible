require 'spec_helper'

describe BookmarksController do

  render_views

  before(:each) do
    @base_title = "barely.edible"
  end
  
  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
    it "should have the right title" do
      get 'new'
      response.should have_selector("title", :content => "New Bookmark | " + @base_title)
    end
  end

  
  describe "GET 'show'" do
    before(:each) do
      @bookmark = Factory(:bookmark)
    end

    it "should be successful" do
      get :show, :id => @bookmark
      response.should be_success
    end

    it "should find the right user" do
      get :show, :id => @bookmark
      assigns(:bookmark).should == @bookmark
    end

    it "should have the right title" do
      get :show, :id => @bookmark
      response.should have_selector("title", :content => "Show One | " + @base_title)
    end
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "Home | " + @base_title)
    end
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
    it "should have the right title" do
      get 'index'
      response.should have_selector("title", :content => "Index | " + @base_title)
    end
  end
  
end
