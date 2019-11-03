class UsersController < ApplicationController
    require 'rest-client'

    def spotify_login
        body = {
            grant_type: "authorization_code",
            code: params[:code],
            redirect_uri: 'http://localhost:3000/user',
            client_id: Rails.application.credentials.spotify[:client_id],
            client_secret: Rails.application.credentials.spotify[:client_secret]
        }
        auth_response = RestClient.post('https://accounts.spotify.com/api/token', body)
        auth_params = JSON.parse(auth_response.body)

        header = {
            Authorization: "Bearer #{auth_params["access_token"]}"
        }

        user_response = RestClient.get("https://api.spotify.com/v1/me", header)
        user_params = JSON.parse(user_response.body)

        @user = User.find_or_create_by(spotify_id: user_params["id"], display_name: user_params["display_name"], profile_image: user_params["images"][0]["url"])
        @user.update(access_token: auth_params["access_token"], refresh_token: auth_params["refresh_token"])

        render json: @user
    end
end
