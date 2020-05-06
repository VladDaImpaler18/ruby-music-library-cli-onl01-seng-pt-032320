require 'pry'
class Song
  
  attr_accessor :name
  attr_reader :artist, :genre
  @@all = []
  
  def initialize(title, artist_obj = nil, genre_object = nil)
    @name = title
    self.artist = artist_obj if artist_obj
    self.genre = genre_object if genre_object
  end
  
  # def self.find_by_name(song_name)
  #     #binding.pry
  #     Song.all.find{|s| s.name == song_name}
  # end

  # def self.find_or_create_by_name(song_name)
  #   self.find_by_name(song_name) || Song.create(song_name)
  # end
  
  def artist=(artist_obj)
    @artist = artist_obj
    artist_obj.add_song(self)
  end
  
  def genre=(genre_obj)
    @genre = genre_obj
    genre_obj.songs << self if !genre_obj.songs.include?(self)
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
    song = Song.new(title)
    song.save
    song
  end
  
end