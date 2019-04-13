class Song
  attr_accessor :artist_name, :name
  @@all = []

  def self.create 
    new_song = self.new 
    @@all << new_song 
    new_song
  end 
  
  def self.new_by_name(song_name)
    new_song = self.new 
    new_song.name = song_name 
    new_song
  end 
  
  def self.create_by_name(song_name)
    new_song = self.create
    new_song.name = song_name
    new_song
  end 
  
  def self.find_by_name(song_name)
    found = @@all.detect {|song| song.name == song_name}
    return found 
  end 
  
  def self.find_or_create_by_name(song_name)
    found = self.find_by_name(song_name)
    if found 
      return found
    else 
      new_song = self.create_by_name(song_name)
    end 
  end 
  
  
  def self.alphabetical 
    @@all.sort_by {|obj| obj.name}
  end 
  
  def self.create_from_filename(filename)
    artist_title = filename.split(" - ")
    artist = artist_title[0]
    title = artist_title[1].sub(".mp3", "")
    new_song = self.new 
    new_song.name = title
    new_song.artist = artist 
    
  end 
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  


end
