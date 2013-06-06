class TracksController < ApplicationController

  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.create!(params[:track])
    if @track
      redirect_to track_url(@track)
    end
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])
    if @track
      @track.update_attributes(params[:track])
    end
  end

  def destroy
    @track = Track.find(params[:id])
    if @track
      @track.destroy
      redirect_to tracks_url
    end
  end
end
