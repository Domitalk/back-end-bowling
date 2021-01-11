class GamesController < ApplicationController 
    # [1]
    # first prompt/fetch, will just make a new game 
    # frontend will then ask for how many players, 
    # keep that info in the front state and then 
    # after name is given for player it will fetch 
    # and create in players controller 

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