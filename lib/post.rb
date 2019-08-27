class Post
    @@all = []
    attr_accessor :title, :author

    def save
        @@all << self
    end
    
    def initialize(title)
        @title = title
        save
    end

    def self.all
        @@all
    end

    def author_name
        if @author
           return @author.name
        end
        nil
    end

end