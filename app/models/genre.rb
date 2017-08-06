class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    songs.all.count
  end

  def artist_count
    # return the number of artists associated with the genre
    songs.all.select {|s| s.artist}.count
  end

  def all_artist_names
    songs.all.map {|s| s.artist.name}
    # return an array of strings containing every musician's name
  end
end
