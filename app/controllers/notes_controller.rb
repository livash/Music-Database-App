class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
    @tracks = Track.all
  end

  def create
    @note = Note.new
    @note.update_attributes(params[:note])
    redirect_to notes_url
  end

  def destroy
    @note = Note.find(params[:id])
    if @note
      @note.destroy
      redirect_to notes_url
    end
  end
end
