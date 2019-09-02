class Author
    attr_accessor :name

    def initialize (name)
        @name = name
        @posts = Post.all
    end
    

    def posts
        @posts.select {|post| post.author == self}
    end
    
    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        added_post = Post.new(post_title)
        added_post.author = self
    end

    def self.post_count
        Post.all.count
    end


end
