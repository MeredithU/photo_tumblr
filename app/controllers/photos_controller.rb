class PhotosController < ApplicationController

  def index
    @photos = Photo.all
    @uploader = Photo.new.image
    @uploader.success_action_redirect = new_photo_url
  end

  def new
    @photo = Photo.new(key: params[:key])
  end

  def create
    @photo = Photo.create(params[:photo])
    if @photo.save
      redirect_to @photo
    else
      #TBD
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

end
