class Blog
  def initialize
    @posts = []
  end

  def add_post(post)
    @posts.push(post)
  end

  def latest_posts
    @orden_post = @posts.sort do |post1, post2|
      post2.date <=> post1.date
    end
    @posts
  end

  def mostrar
    @orden_post
  end

  def buscar_post(link)
    @posts.find{|tarea| tarea.link == link}
  end
end
