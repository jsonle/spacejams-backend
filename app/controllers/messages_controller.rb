class MessagesController < ApplicationController

    def create
        message = Message.create(message_params)
        render json: message.as_json(include: [:user => {:only => [:display_name, :spotify_id]}])
    end

    private

    def message_params
        params.permit(:user_id, :room_id, :content)
    end
end
