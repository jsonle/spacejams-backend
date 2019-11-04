class UsersController < ApplicationController
    require 'rest-client'

    def index
        @users = User.all 
        render json: @users
    end

    def create
        body = {
            grant_type: "authorization_code",
            code: params[:code],
            redirect_uri: 'http://localhost:4000/callback',
            client_id: Rails.application.credentials.spotify[:client_id],
            client_secret: Rails.application.credentials.spotify[:client_secret]
        }
        auth_response = RestClient.post('https://accounts.spotify.com/api/token', body)
        auth_params = JSON.parse(auth_response.body)

        header = {
            Authorization: "Bearer #{auth_params["access_token"]}"
        }

        user_response = RestClient.get("https://api.spotify.com/v1/me", header)
        user_data = JSON.parse(user_response.body)
        img_url = user_data["images"][0] ? user_data["images"][0]["url"] : nil


        user = User.find_or_create_by(user_params(user_data))
        user.update(profile_image: img_url, access_token: auth_params["access_token"], refresh_token: auth_params["refresh_token"])

        render json: user
    end

    private

    def user_params(user_data)
        params = {
            spotify_id: user_data["id"],
            display_name: user_data["display_name"]
        }
    end
end
