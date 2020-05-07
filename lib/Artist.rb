require_relative '../config/environment.rb'
class Artist
  extend Findable
  
  
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all = []
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def add_song(song_obj)
    song_obj.artist = self unless song_obj.artist
    self.songs << song_obj unless self.songs.include?(song_obj)
  end
  
  def genres
    #Song.all.collect{|s| s.genre if s.artist==self}.uniq
    self.songs.collect{ |s| s.genre}.uniq
  end
  
end