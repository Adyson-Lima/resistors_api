puts 'Gerando resistores...'

5.times do |i|
  Resistor.create(
    res_type: ["pth", "smd"].sample ,
    res_value: ["1k","200ohms"].sample
    )
end

puts 'resistores gerados com sucesso!'
