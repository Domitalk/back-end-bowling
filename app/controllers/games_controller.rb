class GamesController < ApplicationController 
    def create
        game = Game.create()
        render json: game.to_json
    end 

    # def index 
    #     games = Game.all 
    #     render json: GameSerializer.new(games).to_serialized_json
    # end 

    def show 
        game = Game.find_by(id: params[:id])
        render json: GameSerializer.new(game).to_serialized_json
    end 

end 