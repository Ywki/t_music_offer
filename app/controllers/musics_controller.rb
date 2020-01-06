class MusicsController < ApplicationController

  def index
    @musics = Music.all.limit(20).order(id: "DESC")
  end

  def new
    @musics = Music.new
  end

  def create
    @music = Music.create(music_params)
    redirect_to root_path
  end

  def show
    @music = @group.musics.find(params[:id])
  end

  def edit
  end

  def update
  end

private

  def music_params
    params.require(:musics).permit(:image, :title, :file, :text, :genre).merge(group_id: params[:group_id])
  end

end