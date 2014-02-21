get "/posts/:id/edit" do 
  if session[:user]
   @post=Post.find(params[:id])
   erb :edit
  else 
    redirect "/"
  end
end 

post "/posts/:id/edit" do 
  if session[:user]
    puts params[:post]
    post = Post.find(params[:id])
    puts post.inspect
    post.update_attributes(params[:post])
    puts post.inspect
    redirect "/posts/#{params[:id]}"
  else 
    redirect "/"
  end
end

get "/posts/new" do
  if session[:user]
    erb :new_post
  else
    redirect "/"
  end
end

post "/posts" do 
  if session[:user]
    puts params
    post = Post.create(params[:post])
    redirect "/posts/#{post.id}"
  else
    redirect "/"
  end
end

get "/posts/:id" do 
  puts session[:user]
  if session[:user]
    @post = Post.find(params[:id]);
    erb :post
  else
    redirect "/"
  end
end 

