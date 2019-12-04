def fuel_requirement(mass)
  if(mass/3-2<0)
     return 0
  end
  mass = mass/3-2
  return mass  + fuel_requirement(mass)
end

sum =0
f = File.open("../inputs/input-01.txt", "r")
f.each_line do |line|
  sum+=fuel_requirement(line.strip.to_i)
end
f.close
puts sum

