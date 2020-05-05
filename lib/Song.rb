require 'pry'
class Song
  
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(title, artist_obj = nil, genre_object = nil)
    @name = title
    @artist = artist_obj
  end
  
  def artist
    @artist
  end
  
  def artist(artist_obj)
    @artist = artist_obj
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