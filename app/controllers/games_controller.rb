class GamesController < ApplicationController 
    def create
        game = Game.create()
        player = Player.create(game: game, name: game_params[:player_name])
        for i in 1..10 do 
            Frame.create( 
                player: player, 
                frame_number: i 
            )
        end 
        render json: GameSerializer.new(game).to_serialized_json
    end 

    def show 
        game = Game.find_by(id: params[:id])
        render json: GameSerializer.new(game).to_serialized_json
    end 

    private 
    def game_params 
        params.permit(:player_name)
    end 
end 