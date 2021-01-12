class FramesController < ApplicationController 
    # removed bc now player controller will create 10 frames at new player instance 
    # def create 
    #     @frame = Frame.create(
    #         player_id: frame_params[:player_id], 
    #         frame_number: frame_params[:frame_number], 
    #     )
    #     render json: @frame 
    # end 

    def update 
        @frame = Frame.find(params[:id])
        @frame.update(check_and_return_correct_hash_for_update)
        render json: @frame
    end 

    private 
    def frame_params
        params.permit(
            :player_id, 
            :first_score, 
            :second_score, 
            :bonus_score
        )
    end 

    def check_and_return_correct_hash_for_update
        # if the xxx_score value is nil, ! will return true !! will return false 
        # !xxx_score ? yes it is empty : no it is filled
        
        if !@frame[:first_score] 
            { first_score: frame_params[:first_score] }
        elsif !@frame[:second_score]
            { second_score: frame_params[:second_score] }
        elsif @frame[:frame_number] === 10
            { bonus_score: frame_params[:bonus_score] }
        end 
    end 
end 