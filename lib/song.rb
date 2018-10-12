class Song
  attr_accessor :song, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  
  def initialize(song, artist, genre)
    @song = song
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre if !@@genres.include?(genre)
    @@artists << artist if !@@artists.include?(artist)
    if @@genre_count[genre]
      @@genre_count[genre] += 1
    else
      @@genre_count[genre] = 1
    end
    if @@artist_count[genre]
      @@artist_count[genre] += 1
    else
      @@artist_count[genre] = 1
    end  
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres
  end

  def self.artists
    @@artists
  end

  def self.genre_count
    @@genre_count
  end

  def artist_count
    @@artist_count
  end
  
end







