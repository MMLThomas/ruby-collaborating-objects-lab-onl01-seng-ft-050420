class MP3Importer
  attr_accessor :path
  
  
  def initialize(path)
    @path = path
  end
  
  def files(file)
    dir[path].select{|file| file.match(/\z(.mp3)/)}
  end
  
  def import()
    
  end
  
  
end