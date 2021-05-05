class GamesController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    Game.create!(name: game_params[:name], genre: game_params[:genre], user_id: current_user.id)
    redirect_to root_path
  end

  private
  def game_params
    params.require(:game).permit(:name, :genre)
  end
end