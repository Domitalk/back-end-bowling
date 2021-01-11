class PlayersController < ApplicationController 
    # [2]
    # the third to howmanyever players will be involved prompt/fetch 
    # as each name of player is given, will fetch a post to create a new player instance 
    # after each player name is given and db instances are created, it will prompt to start game 
    
    def create
        player = Player.create(game_id: player_params[:game_id])
        render json: player
    end 

    private 
    def player_params 
        params.permit(:game_id)
    end 
end 