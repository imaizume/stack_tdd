require './calc'

while line = STDIN.gets
  value = line.chomp.to_f
  p Calc.raw_area(value)
end

