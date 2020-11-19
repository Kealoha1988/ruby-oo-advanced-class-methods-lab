class Song
  attr_accessor :name, :artist_name
  @@all = []


  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end 

  def self.create_by_name(name)
    song = Song.new
    song.name = name
    song.save
    song
  end

  def self.find_by_name(thing)
    Song.all.find{|huh| huh.name == thing}
  end

  def self.find_or_create_by_name(thing)
    self.find_by_name(thing) or self.create_by_name(thing)
  end
  
  def self.alphabetical
    @@all.sort_by{|x| x.name}
  end

  def self.new_from_filename(thing)
    song = Song.new
    artist_name = name
    array = thing.split(/[-.]/)
    song.artist_name = array[0].strip
    r = array[1].strip
    song.name = r
    song
  end

  def self.create_from_filename(thing)
    song = Song.new
    artist_name = name
    song.save
    array = thing.split(/[-.]/)
    song.artist_name = array[0].strip
    r = array[1].strip
    song.name = r
    song
  end

  def self.destroy_all
    @@all.clear
  end


  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
