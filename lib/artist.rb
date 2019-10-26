class Artist 
 
  attr_accessor :name, :songs, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    @genre = genre
    @@all << self 
  end 

  def self.all
    @@all
  end
  
  def songs
    Songs.all.select { |song| song.artist == self }
  end
  
  def new_song(name,genre)
    Song.new(name,self,genre)
    # new_song.artist = self
  end 

end 