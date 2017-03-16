class Song
  attr_accessor :name, :genre, :artist
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name_song, artist_song, genre_song)
    @@count += 1
    @name = name_song
    @artist = artist_song
    @genre = genre_song
    @@genres << genre_song
    @@artists << artist_song

  end

  def self.count
    @@count

  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    count = {}
    @@genres.uniq.each do |genre|
      count[genre] = @@genres.count(genre)
    end
    count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    count = {}
    @@artists.uniq.each do |artist|
      count[artist] = @@artists.count(artist)
    end
    count
  end


end
