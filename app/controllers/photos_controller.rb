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
      redirect_to photos_url
    else
      render :new
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])

    if @photo.update_attributes(params[:photo])
      redirect_to photos_url
    else
      render :action => "edit"
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path
  end


end















