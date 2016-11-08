require_relative ("../lib/post.rb")


RSpec.describe Post do
  before :each do
    @post1 = Post.new("Gabriel Garcia Marquez", Time.now, "Escritor Colombiano de la zona de la costa")
    @post2 = Post.new("Pepito de los palotes", Time.now, "test no mola nada")
  end
  it("#title returns title") do
    expect(@post1.title).to eq("Gabriel Garcia Marquez")
    expect(@post2.title).to eq("Pepito de los palotes")
  end

  it("#date is class Time") do
    expect(@post1.date.class).to eq()
    # expect(@post2.date.class).to eq("Time")
  end

end
