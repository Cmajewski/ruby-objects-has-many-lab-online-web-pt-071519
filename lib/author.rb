class Author
  attr_reader :name, :posts, :add_post

  def initialize (name)
    @name=name
  end

  def posts
    Post.all?.select {|posts| posts.author==self}
  end

  def add_post (post)
    post.author=self
  end

  def add_post_by_title (name)
    new_post= Post.new(name)
    add_post(new_post)
  end

end
