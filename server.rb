require 'sinatra'
require 'date'
require 'sinatra/reloader'
require './lib/blog.rb'
require './lib/post.rb'



blog = Blog.new
blog.add_post Post.new("Gabriel Garcia Marquez", Time.now, "Escritor Colombiano de la zona de la costa", "Personajes", "by luis")
blog.add_post Post.new("Airton Senna Da Silva", Time.now, "Corredor de coches Brasileño Varias veces Campeon del mundo", "Personajes", "by luis")
blog.add_post Post.new("Ernest Heminway", Time.now, "Escritor y aventurero Americano, muerto de cojones", "Personajes", "by luis")
blog.add_post Post.new("Magda Angel", Time.now, "Modelo Colombiana radicada en Estados unidos", "Personajes", "by luis")
blog.add_post Post.new("Batman", Time.now, "Personaje de ficción, que proteje a la ciudad de Gotham", "Personajes", "by luis")
blog.add_post Post.new("Homer Simpson", Time.now, "Dibujo animado cabeza de familia en los Simpson", "Personajes", "by luis")
blog.add_post Post.new("REM", Time.now, "Grupo Musical uno de sus exitos es la canción losing my religion", "Personajes", "by luis")


get "/mostrar" do
  blog.latest_posts
  @posts = blog.mostrar

erb :mostrar
end


get "/new_post" do
  # Show the form
  erb :new_post
end

post "/new_post" do
  titulo = params[:titulo]
  texto = params[:texto]
  categoria = params[:categoria]
  autor = params[:autor]
  link = ""

  date = Time.now
  blog.add_post Post.new(titulo, date, texto, categoria, autor)

  # Receive the form submission
  # erb :new_post
  redirect "/mostrar"
end




get "/post_details/:id" do
  @posts = blog.mostrar
  puts params[:id]
  # @detalle = @posts[params[:id].to_i]
  @detalle = blog.buscar_post(params[:id])
  # puts @detalle.title
  erb :detalle
end
