class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    song = Song.new(song_params)

    if song.save
      redirect_to songs_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end


end
