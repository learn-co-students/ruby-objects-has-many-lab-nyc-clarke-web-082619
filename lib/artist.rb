#require_relative "lib/song.rb"
class Artist
    attr_reader :name, :songs
    def initialize (name)
        @name = name
        @songs = []
    end

    def songs 
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        Song.new(name).artist = self
    end

    def self.song_count 
        Song.all.length
    end
end