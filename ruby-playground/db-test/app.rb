require "sinatra"
require "uri"
require "net/http"

get "/" do 
  url = URI("https://myfirstdb-bb73.restdb.io/rest/person")

  https = Net::HTTP.new(url.host, url.port)
  https.use_ssl = true

  request = Net::HTTP::Get.new(url)
  request["x-apikey"] = "6eabf2d940d09278ea413aa41918c51b7eeb9"

  response = https.request(request)
  @people = JSON.parse(response.read_body)

  erb :index
end
