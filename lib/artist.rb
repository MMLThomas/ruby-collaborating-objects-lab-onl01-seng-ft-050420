class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @@songs = []
  end
  
  def self.all
    @@all
  end
  
  #def self.find_or_create_by_name(name)
   # if self.all.find(name)
    #  artist = self.name
    #  artist
    #else 
    #artist = self.new(name)
     # artist
    #end
  #end
  #
  def self.create(name)
    artist = self.new(name)
    artist
  end

  def self.find(name)
    self.all.detect { |artist| artist.name == name }
  end

  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end
  #
  
  def add_song(song)
    song.artist = self
    @@songs << song
  end
  

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def print_songs
    songs.each{|song| puts song.name}
  end
    
  
end