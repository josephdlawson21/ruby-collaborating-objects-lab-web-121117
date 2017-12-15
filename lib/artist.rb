require "pry"

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    self.all.each do |artist_object|
      if artist_object.name == artist_name
        return artist_object
      end
    end
    Artist.new(artist_name)
  end

  def print_songs
    self.songs.each do |song_object|
      puts song_object.name
    end
  end

end
