class RoomsController < ApplicationController
    def index
        @rooms = Room.all 
        render json: @rooms.as_json(include: :users)
    end
end
