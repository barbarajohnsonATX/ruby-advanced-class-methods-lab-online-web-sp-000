class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create 
    new_song = self.new 
    @@all << new_song 
    new_song
  end 
  

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  


end
