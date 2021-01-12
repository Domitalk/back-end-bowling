class GameSerializer
    def initialize(game_object)
        @game = game_object
    end 

    def to_serialized_json 
        options = {
            include: {
                players: { 
                    include: {
                        frames: {
                            except: [:created_at, :updated_at]
                        }
                    }, 
                    except: [:created_at, :updated_at]
                }
            },
            except: [:created_at, :updated_at]
        }
        
        @game.to_json(options)
    end
end 