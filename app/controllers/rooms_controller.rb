class RoomsController < ApplicationController
    def index
        @rooms = Room.all 
        render json: @rooms.as_json(include: [:users, :messages])
    end

    def show
        room = Room.find(params[:id])
        render json: room.as_json(include: [:users, :messages])
    end
end
