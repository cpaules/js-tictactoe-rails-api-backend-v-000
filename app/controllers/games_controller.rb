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
    @game = Game.create(state: params[:state])
    render json: @game
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  private

  def game_params
    params.require(:game).permit(:state)
  end

end
