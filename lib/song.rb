class Song
    @@all = []
    attr_accessor :name, :artist

    def save
        @@all << self
    end
    
    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def artist_name
        if @artist
           return @artist.name
        end
        nil
    end

end