class Song 
    attr_accessor :name, :artist
    @@all = []
    
    def initialize (title)
        @name = title
        @@all << self
    end
    
    def artist_name
      self.artist.name if artist
     end
    
    def self.all
        @@all
    end


end
