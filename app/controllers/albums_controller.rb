class AlbumsController < ApplicationController

  def index
    @albums = Album.all
    render :index
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def new
    @album = Album.new
    @bands = Band.all
    render :new
  end

  def create
    @album = Album.create!(params[:album])
    if @album
      redirect_to albums_url
    end
  end

  def edit
    @album = Album.find(params[:id])
    if @album
      render :edit
    end
  end

  def update
    @album = Album.find(params[:id])
    if @album
      @album.update_attributes(params[:album])
      redirect_to album_url(@album)
    end
  end

  def destroy
    @album = Album.find(params[:id])
    if @album
      @album.destroy
      redirect_to albums_url
    end
  end

end
