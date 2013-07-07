require 'json'
color_list = [
  "Maroon",
  "Red",
  "Orange",
  "Yellow",
  "Olive",
  "Green",
  "Purple",
  "Fuchsia",
  "Lime",
  "Teal",
  "Aqua",
  "Blue",
  "Navy",
  "Black",
  "Gray",
  "Silver"
]

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/colors' do
  content_type :json
  {color: color_list.sample, space: "#" + (rand(9)+1).to_s}.to_json
end

