

get "/users/login" do 
  erb :login
end

post "/users/login" do
  puts params[:user][:email].to_s + "has logged in"
end

get "/users/logout" do

end

get "/users/new" do 

end

get "/users/:id/edit" do

end

get "/users/:id" do

end



