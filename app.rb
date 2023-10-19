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

get("/payment/results") do
  @the_apr = params.fetch("user_apr").to_f.to_fs(:percentage)

  @number_of_years = params.fetch("user_years").to_f

  @the_pv = params.fetch("user_pv").to_f.to_fs(:currency)

  number_of_periods = @number_of_years * 12

  the_rate_per_period = @the_apr.to_f / 1200

  the_numerator = the_rate_per_period.to_f * @the_pv.to_f

  @the_payment = the_numerator


  erb(:payment_results)
end
