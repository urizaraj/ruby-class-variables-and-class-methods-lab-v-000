require 'set'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    @@count += 1

    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    Array.new(Set.new(@@genres))
  end

end
