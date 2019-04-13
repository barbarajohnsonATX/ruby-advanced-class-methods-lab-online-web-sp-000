class Song
  attr_accessor :artist_name, :name
  @@all = []

  def self.create 
    new_song = self.new 
    @@all << new_song 
    new_song
  end 
  
  def self.name=(name)
    
  end 
  
  def self.new_by_name(song_name)
    new_song = self.new 
    new_song.name = song_name 
    new_song
  end 
  
  def self.create_by_name(song_name)
    new_song = self.create
    new_song.name = song_name
    @@all << new_song
    
    
  end 
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  


end
