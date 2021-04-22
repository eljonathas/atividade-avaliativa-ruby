def sumAllValuesInArray array
  return array.inject(0){|sum,x| sum.to_i + x.to_i }
end

def getLineByColumnValue value, array
  for line in array
    for column in line
      if column.to_i == value
        return line
      end
    end
  end

  return false
end

data = File.readlines('./data.txt')
lines = data.map { |line| line.split(',') }
lines = lines[1...lines.length]

confirmed_cases_value = (lines.map { |line| line[8].to_i }).sort
confirmed_cases_sorted = confirmed_cases_value.reverse

vaccinations_value = (lines.map { |line| line[10].to_i }).sort
vaccinations_sorted = vaccinations_value.reverse

deaths_value = (lines.map { |line| line[9].to_i }).sort
deaths_sorted = deaths_value.reverse

puts 'Qual o total de casos confirmados ("confirmed") e mortes no país ("deaths")?'
puts "Total de casos confirmados é #{sumAllValuesInArray(confirmed_cases_value)} e de mortes é #{sumAllValuesInArray(deaths_value)}."
puts ""
puts 'Quais são os três estados ("state") com maior número de casos confirmados ("confirmed")?'
puts "1 - #{getLineByColumnValue(confirmed_cases_sorted[0], lines)[6]}"
puts "2 - #{getLineByColumnValue(confirmed_cases_sorted[1], lines)[6]}"
puts "3 - #{getLineByColumnValue(confirmed_cases_sorted[2], lines)[6]}"
puts ""
puts 'Quais são os três estados ("state") com maior número de vacinação ("vaccination")?'
puts "1 - #{getLineByColumnValue(vaccinations_sorted[0], lines)[6]}"
puts "2 - #{getLineByColumnValue(vaccinations_sorted[1], lines)[6]}"
puts "3 - #{getLineByColumnValue(vaccinations_sorted[2], lines)[6]}"
puts ""
puts 'Quais são os três estados ("state") com maior número de mortes ("deaths")?'
puts "1 - #{getLineByColumnValue(deaths_sorted[0], lines)[6]}"
puts "2 - #{getLineByColumnValue(deaths_sorted[1], lines)[6]}"
puts "3 - #{getLineByColumnValue(deaths_sorted[2], lines)[6]}"
puts ""
puts 'Quais são os três estados ("state") com menor número de casos confirmados ("confirmed")?'
puts "1 - #{getLineByColumnValue(confirmed_cases_value[0], lines)[6]}"
puts "2 - #{getLineByColumnValue(confirmed_cases_value[1], lines)[6]}"
puts "3 - #{getLineByColumnValue(confirmed_cases_value[2], lines)[6]}"
puts ""
puts 'Quais são os três estados ("state") com menor número de vacinação ("vaccination")?'
puts "1 - #{getLineByColumnValue(vaccinations_value[0], lines)[6]}"
puts "2 - #{getLineByColumnValue(vaccinations_value[1], lines)[6]}"
puts "3 - #{getLineByColumnValue(vaccinations_value[2], lines)[6]}"
puts ""
puts 'Quais são os três estados ("state") com menor número de mortes ("deaths")?'
puts "1 - #{getLineByColumnValue(deaths_value[0], lines)[6]}"
puts "2 - #{getLineByColumnValue(deaths_value[1], lines)[6]}"
puts "3 - #{getLineByColumnValue(deaths_value[2], lines)[6]}"
puts ""