require "pry"
class Post
    attr_accessor :title
    attr_reader :author
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end
    def self.all
        @@all
    end

    def author=(author)
        @author = author
        author.posts << self
    end

    def author_name
        author ? author.name : nil
    end

    
end

post = Post.new("title")
#binding.pry