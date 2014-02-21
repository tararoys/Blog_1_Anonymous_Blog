get "/users/login" do 
  erb :login
end

post "/users/login" do
  user =  User.authenticate(params[:user][:email], params[:user][:password])
  session[:user] = { email: params[:user][:email], id: user.id }
  redirect "/"
end

get "/users/logout" do
  puts session[:user]
  session[:user] = nil
  puts session[:user]
  redirect "/"
end

get "/users/new" do 
  erb :create_user
end

post "/users" do
  new_user  = User.create(email: params[:email] ,  password_hash: User.hashPassword(params[:password]))
  redirect "/"
end

get "/users/:id/edit" do
  @user = User.where(id:params[:id]).first
  erb :edit_user
end

get "/users/:id" do

  redirect "/"

end



