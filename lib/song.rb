class Song
  attr_accessor :name, :artist_name
  @@all = []

  def create 
    new_song = Song.new 
  end 
  

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  


end
