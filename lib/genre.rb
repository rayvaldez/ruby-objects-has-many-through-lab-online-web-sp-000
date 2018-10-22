require 'pry'

class Genre
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    song_genre = []
    Song.all.each do |song|
      if song.genre == self
        song_genre << song
      end
    end
  end

  def artists
    songs.collect { |song| song.artist}
  end
end
