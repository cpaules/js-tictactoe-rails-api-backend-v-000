class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  # def inventory
  #   product = Product.find(params[:id])
  #   render plain: product.inventory > 0 ? true : false
  # end
  #
  # def description
  #   product = Game.find(params[:id])
  #   render plain: product.description
  # end

  def create
    Game.create(game_params)
    redirect_to games_path
  end

  def show
    @game = Game.find(params[:id])
    respond_to do |format|
      format.json { render json: @game}
    end
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end

end
