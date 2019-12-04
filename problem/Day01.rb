def fuel_requirement(mass)
    return (mass/3) -2
end

sum =0
f = File.open("../inputs/input-01.txt", "r")
f.each_line do |line|
  sum+=fuel_requirement(line.strip.to_i)
end
f.close
puts sum

