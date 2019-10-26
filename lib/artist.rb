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
  
  def songs(artist_name)
    @songs.select { |song| song.artist }
  end
  
  def new_song(name,genre)
    new_song = Song.new(name,genre)
    # new_song.artist = self
  end 

end 