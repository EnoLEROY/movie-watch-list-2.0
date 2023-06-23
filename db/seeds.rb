# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Like.destroy_all
Playlist.destroy_all
Song.destroy_all

# Creation des songs
songs = [
  {
    title: "Song of a Dream",
    artist: "Indochine",
    cover_url: "",
    genre: "Pop"
  },
  {
    title: "Remember Me",
    artist: 'Ivan Torrent',
    cover_url: "",
    genre: "Epic"
  },
  {
    title: 'The Wolf',
    artist: "MB14",
    cover_url: "",
    genre: "Indie"
  },
  {
    title: "Heavenbound",
    artist: "Marina Kaye",
    cover_url: "",
    genre: "Pop"
  },
  {
    title: "Respire",
    artist: "Gaël Faye",
    cover_url: "",
    genre: "Pop"
  }
]

# ,
#   {
#     title: ,
#     artist: ,
#     cover_url: ,
#     genre:
#   }
all_songs = []
songs.each do |song|
  s = Song.new(song)
  s.save
  p s
  all_songs << s
end

Playlist.new(name: "All").save

all_songs.each do |song|
  like = Like.new(playlist: Playlist.last, song: song)
  like.save
  p like
end
