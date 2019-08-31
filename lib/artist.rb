class Artist
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def self.all
        @@all
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song)
        name = Song.new(song)
        add_song(name)
    end

    def self.song_count
        Song.all.count
    end

end
