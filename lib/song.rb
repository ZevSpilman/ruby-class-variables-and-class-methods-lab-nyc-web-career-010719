require 'pry'

class Song


attr_accessor :name, :artist, :genre



@@count = 0
@@genres = []
@@artists = []

@@genre_count = {}
@@artist_count = {}


def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre

  @@count += 1

  @@artists << artist
  @@genres << genre
#binding.pry
  if @@genre_count[genre] == nil
    @@genre_count[genre] = 1
  else
    @@genre_count[genre] += 1
  end

  if @@artist_count[artist] == nil
    @@artist_count[artist] = 1
  else
    @@artist_count[artist] += 1
  end

end


def self.count
  @@count
end

def self.genres
  @@genres.uniq
end

def self.artists
@@artists.uniq
end

def self.genre_count
#make they keys of the hash the name of the genres
#make the values og the hash the numbeer of times a song is added with that genre
@@genre_count
end


def self.artist_count
@@artist_count
end



end
