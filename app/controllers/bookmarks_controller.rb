class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
    @title = "New Bookmark"
  end
  
  def index
    @title = "Index"
    @bookmarks = Bookmark.all
  end
  
  def show
    @title = "Show One"
    @bookmark = Bookmark.find(params[:id])
  end

  def home
    @title = "Home"
  end

  def create
    @bookmark = Bookmark.new(params[:bookmark])
    @bookmark.date_saved = Time.now
    if(@bookmark.save)
      redirect_to @bookmark
    else
      render 'new'
    end
  end

end
