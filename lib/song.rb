class Song
  attr_accessor :artist_name
  @@all = []

  def self.create 
    new_song = self.new 
    @@all << new_song 
    new_song
  end 
  
  def self.name=(name)
    
  end 
  
  def self.new_by_name(song_name)
    self.name = song_name
  end 
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  


end
