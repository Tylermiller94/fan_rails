class AnimesController < ApplicationController

  def new
    @subgenre = Subgenre.find(params[:subgenre_id])
    @anime = Anime.new
  end

  def create
    @subgenre = Subgenre.find(params[:subgenre_id])
    @anime = @subgenre.animes.new(anime_params)
    if @anime.save
      flash[:notice] = "ADDED SOME WAIFU TO YOUR LAIFU!!!"
      redirect_to subgenre_path(@subgenre)
    else
      render :new
    end
  end

  def show
    @anime = Anime.find(params[:id])
    @subgenre = Subgenre.find(params[:subgenre_id])
  end

private
  def anime_params
    params.require(:anime).permit(:name, :subgenre_id, :content)
  end

end
