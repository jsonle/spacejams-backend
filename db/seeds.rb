# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'rspotify'

RSpotify.authenticate(Rails.application.credentials.spotify[:client_id], Rails.application.credentials.spotify[:client_secret])


just_good_music = RSpotify::Playlist.find('spotify', "37i9dQZF1DX0b1hHYQtJjp")
get_turnt = RSpotify::Playlist.find('spotify', "37i9dQZF1DWY4xHQp97fN6")
hot_country = RSpotify::Playlist.find('spotify', "37i9dQZF1DX1lVhptIYRda")
workout = RSpotify::Playlist.find('spotify', "37i9dQZF1DX70RN3TfWWJh")
top_hits = RSpotify::Playlist.find('spotify', "37i9dQZF1DXcBWIGoYBM5M")
rap_caviar = RSpotify::Playlist.find('spotify', "37i9dQZF1DX0XUsuxWHRQd")
are_and_be = RSpotify::Playlist.find('spotify', "37i9dQZF1DX4SBhb3fqCJd")
new_music = RSpotify::Playlist.find('spotify', "37i9dQZF1DWXJfnUiYjUKT")
all_out = RSpotify::Playlist.find('spotify', "37i9dQZF1DX4o1oenSJRJd")
soft_pop = RSpotify::Playlist.find('spotify', "37i9dQZF1DWTwnEm1IYyoj")


Room.create(playlist_name: "Just Good Music", playlist_id: "37i9dQZF1DX0b1hHYQtJjp", playlist_image_url: just_good_music.images[0]['url'], playlist_description: just_good_music.description)
Room.create(playlist_name: "Get Turnt", playlist_id: "37i9dQZF1DWY4xHQp97fN6", playlist_image_url: get_turnt.images[0]['url'], playlist_description: get_turnt.description)
Room.create(playlist_name: "Hot Country", playlist_id: "37i9dQZF1DX1lVhptIYRda", playlist_image_url: hot_country.images[0]['url'], playlist_description: hot_country.description)
Room.create(playlist_name: "Workout", playlist_id: "37i9dQZF1DX70RN3TfWWJh", playlist_image_url: workout.images[0]['url'], playlist_description: workout.description)
Room.create(playlist_name: "Today's Top Hits", playlist_id: "37i9dQZF1DXcBWIGoYBM5M", playlist_image_url: top_hits.images[0]['url'], playlist_description: top_hits.description)
Room.create(playlist_name: "RapCaviar", playlist_id: "37i9dQZF1DX0XUsuxWHRQd", playlist_image_url: rap_caviar.images[0]['url'], playlist_description: rap_caviar.description)
Room.create(playlist_name: "Are & Be", playlist_id: "37i9dQZF1DX4SBhb3fqCJd", playlist_image_url: are_and_be.images[0]['url'], playlist_description: are_and_be.description)
Room.create(playlist_name: "New Music Friday", playlist_id: "37i9dQZF1DWXJfnUiYjUKT", playlist_image_url: new_music.images[0]['url'], playlist_description: new_music.description)
Room.create(playlist_name: "All Out 00s", playlist_id: "37i9dQZF1DX4o1oenSJRJd", playlist_image_url: all_out.images[0]['url'], playlist_description: all_out.description)
Room.create(playlist_name: "Soft Pop Hits", playlist_id: "37i9dQZF1DWTwnEm1IYyoj", playlist_image_url: soft_pop.images[0]['url'], playlist_description: soft_pop.description)



