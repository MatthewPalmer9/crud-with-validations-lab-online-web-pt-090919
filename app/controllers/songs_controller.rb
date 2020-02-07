class SongsController < ApplicationController
<<<<<<< HEAD
  before_action :set_song, only:[:show, :edit, :update, :destroy]
=======
>>>>>>> b1f6ee21f36d368e899a27af443556783356135a

  def index
    @songs = Song.all
  end

<<<<<<< HEAD
  def show
  end

  def new
    @song = Song.new
=======
  def new
    @song = Song.new
  end

  def show
    set_song
  end

  def edit
    set_song
>>>>>>> b1f6ee21f36d368e899a27af443556783356135a
  end

  def create
    @song = Song.new(song_params)

    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

<<<<<<< HEAD
  def edit
  end

  def update
    @song.assign_attributes(song_params)

    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render :edit
    end
=======
  def update
    if @song.update(song_params)
      redirect_to song_path(@song)
    else
      render :edit
    end 
>>>>>>> b1f6ee21f36d368e899a27af443556783356135a
  end

  def destroy
    @song.destroy
    redirect_to songs_path
  end

  private
<<<<<<< HEAD
=======

>>>>>>> b1f6ee21f36d368e899a27af443556783356135a
  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
<<<<<<< HEAD
    params.require(:song).permit(:title, :released, :release_year, :genre, :artist_name)
=======
    params.require(:song).permit(:title, :artist_name, :released, :release_year, :genre)
>>>>>>> b1f6ee21f36d368e899a27af443556783356135a
  end
end
