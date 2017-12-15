
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    hold = file_name.split(" - ")
    artist_name = hold[0]
    song_name = hold[1]
    new_song = Song.new(song_name)
    new_song.artist = new_song.artist_name(artist_name)
    new_song.artist.add_song(new_song)
    new_song
    # binding.pry
  end

  def artist_name(name_string)
    Artist.find_or_create_by_name(name_string)
  end
end
