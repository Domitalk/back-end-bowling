class PlayersController < ApplicationController 
    # removed bc now GameController will create player at its own creation 
    # def create
    #     player = Player.create(game_id: player_params[:game_id])
    #     for i in 1..10 do 
    #         Frame.create( 
    #             player: player, 
    #             frame_number: i 
    #         )
    #     end 
    
    #     render json: player
    # end 

    private 
    # def player_params 
    #     params.permit(:game_id)
    # end 
end 