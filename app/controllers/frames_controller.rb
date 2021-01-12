
class FramesController < ApplicationController 
    def create 
        @frame = Frame.create(
            player_id: frame_params[:player_id], 
            frame_number: frame_params[:frame_number], 
            first_score: frame_params[:first_score]
        )
        render json: @frame 
    end 

    def update 
        @frame = Frame.find(params[:id] )
        @frame.update(check_last_frame)
        render json: @frame
    end 

    private 
    def frame_params
        params.permit(
            :player_id, 
            :frame_number, 
            :first_score, 
            :second_score, 
            :bonus_score
        )
    end 

    def check_last_frame
        if !@frame[:second_score]
            { second_score: frame_params[:second_score] }
        elsif (@frame[:frame_number] == 10 && (@frame[:first_score] + @frame[:second_score] == 10))
            { bonus_score: frame_params[:bonus_score] }
        end 
    end 
end 