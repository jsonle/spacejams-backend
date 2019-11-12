class AuthController < ApplicationController

    def create
        url = "https://accounts.spotify.com/authorize"
        query_params = {
          client_id: Rails.application.credentials.spotify[:client_id],
          response_type: 'code',
          redirect_uri: Rails.application.credentials.spotify[:redirect_uri],
          scope: "user-read-email",
          show_dialog: true
        }
        redirect_to "#{url}?#{query_params.to_query}"
    end

end
