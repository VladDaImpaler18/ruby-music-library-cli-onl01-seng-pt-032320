require 'pry'
class Song
  
  attr_accessor :name, :genre
  attr_reader :artist
  
  @@all = []
  
  def initialize(title, artist_obj = nil, genre_object = nil)
    @name = title
    self.artist = artist_obj if artist_obj
    @genre = genre_object
  end
  
  #def artist
    #binding.pry
    #@artist
    #Artist.all.select{ |artist_obj| artist_obj == self.artist }
  #end
  
  def artist=(artist_obj)
    @artist = artist_obj
    artist_obj.add_song(self)
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
  
  def self.create(title)
    Song.new(title).save
    self
  end
  
  
end