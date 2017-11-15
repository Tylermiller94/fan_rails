class SubgenresController < ApplicationController

  def index
    @subgenres = Subgenre.all
  end

  def show
    @subgenre = Subgenre.find(params[:id])
  end

  def new
    @subgenre = Subgenre.new
  end

  def create
    @subgenre = Subgenre.new(subgenre_params)
    if @subgenre.update(subgenre_params)
      flash[:notice] = "Subgenre has been created!"
      redirect_to subgenres_path
    else
      render:new
    end
  end




  private
  def subgenre_params
    params.require(:subgenre).permit(:name)
  end
end
