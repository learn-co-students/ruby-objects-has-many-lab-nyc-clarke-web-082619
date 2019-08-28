class Author
  attr_accessor :name, :post
  def initialize(name)
    @name = name 

  end

  def posts
    Post.all.select{|posting| posting.author == self}
  end

  def add_post(posting)
    posting.author = self
  end

  def add_post_by_title(new_post)
    posting = Post.new(new_post)
    posting.author = self 
  end

  def self.post_count
    Post.all.count
  end
end