class Author
    attr_reader :name, :posts

    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        Post.all.select {|x| x.author == self}
    end

    def add_post(posts)
        posts.author = self
    end

    def add_post_by_title(title)
        Post.new(title).author = self
    end

    def self.post_count
        Post.all.length
    end


    
end