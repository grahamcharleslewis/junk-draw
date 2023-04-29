require "json"

data = JSON.parse File.read("data.json")

data.each do |key, value|
  puts key
  puts value
  value["connections"].each do |connection|
    puts connection.inspect
    puts data[connection].inspect
  end
end