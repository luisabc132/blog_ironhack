class Post
  attr_accessor :title, :date, :text, :category, :author, :link
  def initialize (title,date,text,category,author,link="")
    @title = title
    @date = date
    @text = text
    @category = category
    @author = author
    @link = link

  end
end
