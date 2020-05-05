class Artist
  
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
    Artist.new(name).save
    self
  end
  
  def songs
    Song.all.map { |song_obj| song_obj.artist == self }
  end
  
  def add_song(song_obj)

  end
end