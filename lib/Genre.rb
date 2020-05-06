require_relative '../config/environment.rb'
class Genre
  extend Findable
  
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    @songs
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
    Genre.new(name).save
    self
  end
  
  def artists
    #Song.all.collect{|s| s.artist if s.genre==self}.uniq
    self.songs.collect{ |s| s.artist}.uniq
  end
  
end