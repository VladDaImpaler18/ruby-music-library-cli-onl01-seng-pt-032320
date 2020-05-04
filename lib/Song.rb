class Song
  
  attr_accessor :name
  @@all = []
  
  def initialize(title, artist_obj = nil, genre_object = nil)
    @name = title
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