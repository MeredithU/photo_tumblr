class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(params[:photo])
    if @photo.save
      render :action => "index"
    else
      #TBD
    end
  end

end
