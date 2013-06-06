class BandsController < ApplicationController

  def index
    @bands_all = Band.all
    render :index
  end

  def show
    @band = Band.find(params[:id])
    @albums = @band.albums
    @tracks = @band.tracks
    render :show
  end

  def new
    @band = Band.new
    render :new
  end

  def create
    @band = Band.new(params[:band])
    if @band.save
      redirect_to band_url(@band)
    else
      render :new
    end
  end

  def edit
    @band = Band.find(params[:id])
    render :edit
  end

  def update
    @band = Band.find(params[:id])
    @band.update_attributes(params[:band])
    redirect_to bands_url
  end

  def destroy
    @band = Band.find(params[:id])
    if @band.destroy
       redirect_to bands_url
    end
  end
end
