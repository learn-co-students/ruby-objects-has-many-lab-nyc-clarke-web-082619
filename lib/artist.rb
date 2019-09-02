class Artist
attr_accessor :name

    def initialize (name)
        @name = name
        @songs = Song.all
    end
    

    def songs
        @songs.select {|song| song.artist == self} 
    end
    
    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        added_song = Song.new(song_name)
        added_song.artist = self
    end

    def self.song_count
        Song.all.count
    end
end
