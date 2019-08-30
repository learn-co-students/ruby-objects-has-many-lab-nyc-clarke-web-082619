class Post

    attr_reader :title
    attr_accessor :author

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def author_name
        self.author == nil ? nil : self.author.name
    end

    def self.all
        @@all
    end

end