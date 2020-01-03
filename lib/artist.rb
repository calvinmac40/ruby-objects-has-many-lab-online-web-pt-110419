require 'pry'

class Artist 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist = self}
  end
  
  def add_song(song)
    song.artist = self
    Song.all.count 
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    add_song(song)
  end
  
  def self.song_count
    Song.all.count
  end
end


