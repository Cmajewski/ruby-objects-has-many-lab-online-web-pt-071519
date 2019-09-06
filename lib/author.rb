class Author
  attr_reader :name

  def initialize (name)
    @name=name
  end

  def posts
    Post.all?.select {|posts| posts.author==self}
  end
end
