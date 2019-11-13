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

Room.create(playlist_name: "Just Good Music", playlist_id: "37i9dQZF1DX0b1hHYQtJjp", playlist_image_url: just_good_music.images[0]['url'], playlist_description: just_good_music.description)
Room.create(playlist_name: "Get Turnt", playlist_id: "37i9dQZF1DWY4xHQp97fN6", playlist_image_url: get_turnt.images[0]['url'], playlist_description: get_turnt.description)
Room.create(playlist_name: "Hot Country", playlist_id: "37i9dQZF1DX1lVhptIYRda", playlist_image_url: hot_country.images[0]['url'], playlist_description: hot_country.description)
Room.create(playlist_name: "Workout", playlist_id: "37i9dQZF1DX70RN3TfWWJh", playlist_image_url: workout.images[0]['url'], playlist_description: workout.description)
Room.create(playlist_name: "Today's Top Hits", playlist_id: "37i9dQZF1DX9OZisIoJQhG", playlist_image_url: top_hits.images[0]['url'], playlist_description: morning_classical.description)


