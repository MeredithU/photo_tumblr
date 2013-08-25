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
      render :action => "show"
    else
      #TBD
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

end
