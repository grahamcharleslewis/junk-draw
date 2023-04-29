require 'csv'

uk_population = {
  england: 56075912,
  scotland: 5295403,
  wales: 3107500,
  northern_ireland: 1893667
}

headers = ["website hits 2021"] + uk_population.keys

CSV.open("percent.csv", "w", write_headers: true, headers: headers) do |csv|
  CSV.open("data.csv", "r", headers: true).each do |row|
    data = []
    row.each do |key, value|
      if key == 'website hits 2021'
        data << value
      else
        population = uk_population[key.to_sym]
        percent = (value.to_f / population.to_f) * 100
        data << percent.round(2)
      end
    end
    csv << data
  end
end