class Artist 
 
  attr_accessor :name, :songs, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = songs
    @genre = genre
    @@all << self 
  end 

  def self.all
    @@all
  end
  
  def new_song(name,genre)
    Song.
  end 

end 