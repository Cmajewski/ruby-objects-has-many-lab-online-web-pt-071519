class Artist
  attr_reader :name, :songs

  def initialize (name)
    @name=name
    @songs=[]
  end

  def songs
    Song.all?.select {|song| song.artist==self}
  end

  def add_song (song)
    song.aritst=self

  end

end
