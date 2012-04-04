# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer         not null, primary key
#  url        :string(255)
#  name       :string(255)
#  date_saved :date
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Bookmark do

  before(:each) do
    @attr = { :name => "Example Link Name", :url => "http://www.example.com" }
  end
  
  it "should create a new instance given valid attributes" do
    Bookmark.create!(@attr)
  end
  
  it "should require a name" do
    no_name_bookmark = Bookmark.new(@attr.merge(:name => ""))
    no_name_bookmark.should_not be_valid
  end
  
  it "should require a URL" do
    no_url_bookmark = Bookmark.new(@attr.merge(:url => ""))
    no_url_bookmark.should_not be_valid
  end
  
  it "should reject names that are too long" do
    long_name = "a" * 101
    long_name_bookmark = Bookmark.new(@attr.merge(:name => long_name))
    long_name_bookmark.should_not be_valid
  end
  
  it "should reject URLs that are too short" do
    short_url = "a" * 9
    short_url_bookmark = Bookmark.new(@attr.merge(:url => short_url))
    short_url_bookmark.should_not be_valid
  end

end
