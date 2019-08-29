require "pry"
class Artist
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    @@songs = []

    def songs
        @@songs
    end

    def add_song(song)
        song.artist = self
        if !@@songs.include?(song) 
            songs << song
        end
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        add_song(song)
    end

    def self.song_count
        @@songs.length
        #binding.pry
    end
end