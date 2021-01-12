class PlayersController < ApplicationController 
    def create
        player = Player.create(game_id: player_params[:game_id])
        render json: player
    end 

    private 
    def player_params 
        params.permit(:game_id)
    end 
end 