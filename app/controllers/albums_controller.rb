class AlbumsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @albums = @user.albums
  end

  def show
    @user = User.find(params[:user_id])
    @album = Album.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @album = Album.new
  end

  def create
    @user = User.find(params[:user_id])
    @album = @user.albums.create(album_params)

    if @album.save
      redirect_to user_album_path(@user, @album)
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @album = Album.find(params[:id])
    @album.destroy
    flash[:success] = 'Album successfully deleted.'
    redirect_to user_albums_path
  end

  private

  def album_params
    params.require(:album).permit(:name, photos: [])
  end
end
