require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do
  erb(:square_calc)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_f

  @the_square = @the_num ** 2

  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root_calc)
end

get("/square_root/results") do
  @the_num = params.fetch("users_number").to_f

  @the_square_root = @the_num ** 0.5
  erb(:square_root_results)
end

get("/payment/new") do
  erb(:monthly_payment)
end
