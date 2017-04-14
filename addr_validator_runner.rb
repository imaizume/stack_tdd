require './addr_varidator'

while line = STDIN.gets
  value = line.chomp
  if AddrVaridator.valid(value)
    puts 'ok'
  else
    puts 'ng'
  end
end

