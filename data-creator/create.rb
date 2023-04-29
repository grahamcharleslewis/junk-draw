require 'csv'
require 'faker'

months = %w[
  january february march april may june 
  july august september october november december
]

uk_population = {
  england: 56075912,
  scotland: 5295403,
  wales: 3107500,
  northern_ireland: 1893667
}

headers = ["website hits 2021"] + uk_population.keys

CSV.open("data.csv", "w", write_headers: true, headers: headers) do |csv|
  months.each do |month|
    row = [month]
    uk_population.values.each do |population|
      row << Faker::Number.within(range: population..(population * 3)) 
    end
    csv << row
  end 
end 
