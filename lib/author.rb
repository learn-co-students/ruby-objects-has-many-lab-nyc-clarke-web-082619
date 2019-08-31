class Author
 attr_accessor :name, :author

@@all = []

def initialize(name)
    @name = name
    @posts = []
    @@all << self
end

def self.all
    @@all
end

def posts
    Post.all.select {|x| x.author == self}
end

def add_post(post)
    post.author = self
end

def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
end

def self.post_count
    Post.all.count
end


end
